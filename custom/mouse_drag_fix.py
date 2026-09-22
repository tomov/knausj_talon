"""MT: make ending a drag work again (pop / "end drag") on Talon 1.0 + Linux.

Upstream's plugin/mouse/mouse.py ends a drag like this:

    def mouse_drag_end() -> bool:
        buttons = ctrl.mouse_buttons_down()
        if buttons:
            for button in buttons:
                actions.mouse_release(button)
            return True
        return False

That mixes two different button numbering spaces. `ctrl.mouse_buttons_down()`
reports platform-native button codes, while `actions.mouse_release()` expects
Talon's own numbering (0 = left, 1 = right, 2 = middle). On Linux those do not
agree, so the release lands on the wrong button: the drag stays down, yet the
function still returns True.

Returning True is what makes `noise_trigger_pop` skip the click, so a pop would
consume the noise, fail to end the drag, and not click either -- which is why
pop, "end drag" and "drag end" all appeared to do nothing, while "touch" still
worked (it issues a real left press+release via mouse_click(0)).

The fix is to release using the exact value we pressed with, which is guaranteed
to be in the same numbering space as the press. Whatever the platform reports is
then released too, as a fallback.

Set MT_DRAG_DEBUG = True to log every press/release to the Talon log.
"""

from talon import Context, actions, ctrl

MT_DRAG_DEBUG = False

ctx = Context()

# Buttons we pressed ourselves, in Talon numbering, as passed to actions.mouse_drag.
_held: set[int] = set()


def _debug(msg: str):
    if MT_DRAG_DEBUG:
        print(f"[MT drag] {msg} held={sorted(_held)} native={ctrl.mouse_buttons_down()}")


@ctx.action_class("user")
class UserActions:
    def mouse_drag(button: int):
        """Press and hold a mouse button for dragging"""
        # Clear any existing drag first, same as upstream.
        actions.user.mouse_drag_end()
        _held.add(button)
        actions.mouse_drag(button)
        _debug(f"drag start button={button}")

    def mouse_drag_end() -> bool:
        """Release any held mouse buttons. True if something was actually held."""
        released = False

        for button in sorted(_held):
            actions.mouse_release(button)
            released = True
        _held.clear()

        # Fallback for drags started outside user.mouse_drag. These values are in
        # the platform's numbering, so this is best-effort only -- it is the
        # behaviour upstream relies on exclusively.
        for button in ctrl.mouse_buttons_down():
            actions.mouse_release(button)
            released = True

        _debug(f"drag end released={released}")
        return released

    def mouse_drag_toggle(button: int):
        """Release the button if we are holding it, otherwise start dragging"""
        if button in _held or button in ctrl.mouse_buttons_down():
            _held.discard(button)
            actions.mouse_release(button)
            _debug(f"toggle release button={button}")
        else:
            _held.add(button)
            actions.mouse_drag(button)
            _debug(f"toggle press button={button}")

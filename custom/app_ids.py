"""MT: app ids for my personal per-app command files.

Talon 1.0 only matches an `app: <id>` header against an app id that has been
*declared* somewhere in Python. Talon 0.4 was loose about this and would fall
back to matching the raw application name, so headers like `app: cursor` or
`app: sublime text` used to work by accident. After the 1.0 upgrade they matched
nothing at all and failed silently -- no warning in the log, the commands just
never fired.

These declarations make custom/cursor.talon, custom/sublime.talon and
custom/jetbrains.talon live again. If a file of mine ever stops responding after
an upgrade, check here first, then check that the id in the `app:` header is one
of the names assigned below.
"""

from talon import Module

mod = Module()

mod.apps.cursor = r"""
os: linux
and app.exe: /^cursor$/i
os: linux
and app.name: /^cursor$/i
os: windows
and app.name: Cursor
os: mac
and app.bundle: com.todesktop.230313mzl4w4u92
"""

mod.apps.sublime = r"""
os: linux
and app.exe: /^sublime_text$/i
os: linux
and app.name: /^sublime.?text$/i
os: windows
and app.exe: /^sublime_text\.exe$/i
os: mac
and app.bundle: com.sublimetext.4
"""

# Upstream used to declare `jetbrains` in apps/jetbrains/jetbrains.py, but I
# deleted that file (its command set collided with mine), so the id has to be
# declared here instead.
mod.apps.jetbrains = r"""
os: linux
and app.exe: /^(pycharm|clion|idea|webstorm|goland|rubymine|rider|datagrip|studio)(64)?(\.sh)?$/i
os: linux
and app.name: /^jetbrains-/i
os: windows
and app.exe: /^(pycharm|clion|idea|webstorm|goland|rubymine|rider|datagrip)(64)?\.exe$/i
os: mac
and app.bundle: /^com\.jetbrains\./
"""

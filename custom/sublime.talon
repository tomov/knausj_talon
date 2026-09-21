# MT: moved here from apps/sublime/sublime.talon. The "sublime" app id is
# declared in custom/app_ids.py; the old extra headers ("sublime text",
# "sublime_text") were never declared ids and matched nothing under Talon 1.0.
app: sublime
-
copy: key(ctrl-shift-c)
pasta: key(ctrl-shift-v)
search: "/"
replace:
    insert(":%s///g")
    key(left)
    key(left)
    key(left)

command palette: key(ctrl-shift-p)

# MT: moved here from apps/jetbrains/jb_mom.talon. Only "jetbrains" is a real
# app id (declared in custom/app_ids.py) and its matchers already cover pycharm
# and clion, so the per-IDE headers are gone. The old sublime headers are gone
# too -- they duplicated copy/pasta/search/replace from custom/sublime.talon,
# which would now be an ambiguity rather than a silent no-op.
app: jetbrains
-
settings():
    speech.timeout = 0.300
    #speech.timeout = 0.350
    insert_wait = 0
    key_wait = 10
copy: key(ctrl-shift-c)
pasta: key(ctrl-shift-v)
search: "/"
replace:
    insert(":%s///g")
    key(left)
    key(left)
    key(left)

search everywhere:
    key(shift)
    key(shift)



see out: "std::cout<<"
end of line: "<<std::endl;"
const auto: "const auto "


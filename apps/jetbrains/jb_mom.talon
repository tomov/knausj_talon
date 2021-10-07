app: jetbrains
app: pycharm 
app: jetbrains-pycharm 
-
settings():
    speech.timeout = 0.150
    insert_wait = 0
    key_wait = 10
copy: key(ctrl-shift-c)
paste: key(ctrl-shift-v)
search: "/"
replace:
    insert(":%s///g")
    key(left)
    key(left)
    key(left)

search everywhere:
    key(shift)
    key(shift)

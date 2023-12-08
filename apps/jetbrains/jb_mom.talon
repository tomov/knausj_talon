app: jetbrains
app: pycharm 
app: clion
app: jetbrains-pycharm 
app: jetbrains-clion 
-
settings():
    speech.timeout = 0.350
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



see out: "std::cout<<"
end of line: "<<std::endl;"
const auto: "const auto "


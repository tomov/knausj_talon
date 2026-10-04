app: jetbrains
app.name: Sublime Text
app.name: /PyCharm/
app.name: /CLion/
-
settings():
    speech.timeout = 0.300
    #speech.timeout = 0.350
    insert_wait = 0
    key_wait = 10
copy: key(cmd-c)
pasta: key(cmd-v)
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


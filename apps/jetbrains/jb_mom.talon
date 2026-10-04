# each group starts with os: so the groups are OR'd (different keys on
# separate lines would otherwise be AND'd)
os: mac
and app: jetbrains
os: mac
and app.name: Sublime Text
os: mac
and app.name: /PyCharm/
os: mac
and app.name: /CLion/
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


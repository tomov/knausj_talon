# shared between ubuntu and mac; see jb_mom_ubuntu.talon / jb_mom_mac.talon
os: linux
and app: jetbrains
os: linux
and app: sublime
os: linux
and app: sublime text
os: linux
and app: pycharm
os: linux
and app: clion
os: linux
and app: jetbrains-pycharm
os: linux
and app: jetbrains-clion
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

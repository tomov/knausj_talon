# shared between ubuntu and mac; see cursor_ubuntu.talon / cursor_mac.talon
os: linux
and app: cursor
os: mac
and app.name: Cursor
and app.bundle: com.todesktop.230313mzl4w4u92
-
search: "/"
replace:
    insert(":%s///g")
    key(left)
    key(left)
    key(left)

start debugging: key(f5)
continue debugging: key(f5)
step over: key(f10)

plan mode: key(shift-tab)


# C++
see out: "std::cout<<"
end of line: "<<std::endl;"
const auto: "const auto "

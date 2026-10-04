# shared between ubuntu and mac; see sublime_ubuntu.talon / sublime_mac.talon
os: linux
and app: sublime
os: linux
and app: sublime text
os: linux
and app: sublime_text
os: mac
and app.name: Sublime Text
and app.bundle: com.sublimetext.4
-
search: "/"
replace:
    insert(":%s///g")
    key(left)
    key(left)
    key(left)

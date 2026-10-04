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
copy: key(cmd-c)
pasta: key(cmd-v)

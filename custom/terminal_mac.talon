app: iterm2
app: apple_terminal
-
copy: 
    key(cmd-c)
cut: 
    key(cmd-x)
paste: 
    key(cmd-v)

length: 
    insert("len()")
    key(left)
print:
    insert("print()")
    key(left)
embed: "embed()"


# this is for vim, I can't get vim.talon to work
new line: "$a\n" 
them quit: ":q\n"
[vim] save quit: ":wq\n"
set paste: ":set paste\n"
set no paste: ":set nopaste\n"
exclamation mark: "!"
horizontal split: ":sp "
parentheses: "()"

pie: "py"
eye python: "ipython\n"
conda: "conda "
mongo: "mongo"
es share: "sshare -U\n"
cat: "cat "
fussy: "fasse"


nvidia smee: "nvidia-smi\n"

git ignore: ".gitignore"


search everywhere:
    key(shift)
    key(shift)

Colonel: "kernel"
colonel: "kernel"
square root:
    "sqrt()"
    key(left)
#grep:
#    "grep ''"
#    key(left)


# ---- ported from ubuntu_squashed_rebased (mac-adapted) ----
pasta: key(cmd-v)
copy pasta:
    key(cmd-c)
    key(cmd-v)
cap pasta:
    key(cmd-c)
    key(cmd-v)
# BSD du has no --max-depth
D U dash H: "du -h -d 1"

mongo shell: "mongosh"

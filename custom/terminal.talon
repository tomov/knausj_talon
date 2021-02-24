#tag: terminal
-
vim: "vim "
list: "ls\n"
list latch: "ls -latch\n"
print directory: "pwd\n"
tea mux: "tmux"
change dear: "cd "
go home: "cd ~\n"
daddy: "cd ..\n"
grep:
    insert("grep ''")
    key(left)
make dear: "mkdir "
move: "mv "
remove: "rm "
copy: "cp "
git revert: "git revert "

# this is for vim, I can't get vim.talon to work
new: "$a\n" 
vim save: ":w\n"
vim quit: ":q\n"
[vim] save quit: ":wq\n"


pit dot:
    key(pgdown)
search everywhere:
    key(shift)
    key(shift)

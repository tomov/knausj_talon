#tag: terminal
#
#
-
vim: "vim "
list: "ls\n"
list latch: "ls -latch"
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
remove directory: "rmdir "
git revert: "git revert "

# this is for vim, I can't get vim.talon to work
new: "$a\n" 
vim save: ":w\n"
vim quit: ":q\n"
[vim] save quit: ":wq\n"

conda environment list: "conda env list\n"
conda activate: "conda activate "
conda deactivate: "conda deactivate\n"
conda create: "conda create "
conda remove: "conda remove "

pip install: "pip install "
pip uninstall: "pip uninstall "
python: "python "

pit dot:
    key(pgdown)
search everywhere:
    key(shift)
    key(shift)

settings():
    speech.timeout = 0.150
#insert_wait = 0
#    key_wait = 20

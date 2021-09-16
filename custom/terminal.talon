app: terminal
app: gnome-terminal
-
copy file: "cp "
copy: key(ctrl-shift-c)
paste: key(ctrl-shift-v)


vim: "vim "
them: "vim "
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
remove directory: "rmdir "
git revert: "git revert "

conda environment list: "conda env list\n"
conda activate: "conda activate "
conda deactivate: "conda deactivate\n"
conda create: "conda create "
conda remove: "conda remove "

pip install: "pip install "
pip uninstall: "pip uninstall "
python: "python "
basil: "bazel "
basil run: "bazel run "
sudo: "sudo "
dear: "dir"
#num pie: "numpy"
num pie: "np"
jupiter notebook: "jupyter notebook\n"
nose tests: "nosetests "
kill all dash nine: "killall -9 "

# this is for vim, I can't get vim.talon to work
new: "$a\n" 
vim save: ":w\n"
vim quit: ":q\n"
[vim] save quit: ":wq\n"


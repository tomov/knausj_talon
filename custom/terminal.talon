app: terminal
app: gnome-terminal
-
copy file: "cp "
copy: key(ctrl-shift-c)
paste: key(ctrl-shift-v)


vim: "vim "
them: "vim "
list: "ls "
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
conda activate <user.text>: "conda activate {text}"
conda deactivate: "conda deactivate\n"
conda create: "conda create "
conda remove: "conda remove "

pip install: "pip install "
pip uninstall: "pip uninstall "
pip freeze: "pip freeze "
python: "python "
basil: "bazel "
basil run: "bazel run "
basil build: "bazel build "
basil sink: "bazel sync\n"
sudo: "sudo "
es cancel: "scancel "
es account: "sacct\n"
jupiter notebook: "jupyter notebook\n"
conan install: "conan install "
nose tests: "nosetests "
kill all dash nine: "killall -9 "
find name:
    "find . -name ''"
    key(left)
set paste: ":set paste\n"
set no paste: ":set nopaste\n"
set number: ":set nu\n"
set no number: ":set nu!\n"
echo: "echo "
export: "export "
source: "source "
exit: "exit"
envidia smee: "nvidia-smi"
watch: "watch "
bash ar see: "~/.bashrc"
tail dash fine: "tail -f "
slurm: "slurm"


# this is for vim, I can't get vim.talon to work
vim save: ":w\n"
vim quit: ":q\n"
[vim] save quit: ":wq\n"
search: "/"
replace:
    insert(":%s///g")
    key(left)
    key(left)
    key(left)


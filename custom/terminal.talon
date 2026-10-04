app: iterm2
app: apple_terminal
-
vim: "vim "
them: "vim "
ten: "vim "
find name: 
    insert("find . -name ''")
    key(left)
list: "ls "
list latch: "ls -latch "
print directory: "pwd\n"
tea mux: "tmux"
tea mux attach: "tmux a -t "
pip freeze: "pip freeze "
pip install: "pip install "
pip uninstall: "pip uninstall "
change dear: "cd "
go home: "cd ~\n"
#daddy: "cd ..\n"
grep:
    insert("grep ''")
    key(left)
make dear: "mkdir "
move: "mv "
copy file: "cp "
remove: "rm "
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
dear:
    insert("dir()")
    key(left)
embed: "embed()"




claude: "claude"
claude resume: "claude --resume "
claude YOLO: "claude --dangerously-skip-permissions"
claude YOLO mode: "claude --dangerously-skip-permissions "
claude YOLO resume: "claude --dangerously-skip-permissions --resume "
claude docker container: "~/sh/run-av-stack-claude-docker.sh"
claude auth status: "claude auth status"




# this is for vim, I can't get vim.talon to work
new line: "$a\n" 
vim save: ":w\n"
vim quit: ":q\n"
save quit: ":wq\n"
them quit: ":q\n"
[vim] save quit: ":wq\n"
set no number: ":set nu!\n"
set paste: ":set paste\n"
set no paste: ":set nopaste\n"
exclamation mark: "!"
vertical split: ":vs "
horizontal split: ":sp "
parentheses: "()"
search: "/"

pie: "py"
echo: "echo "
eye python: "ipython\n"
exit: "exit"
conda: "conda "
conda environment list: "conda env list\n"
#conda activate <user.text>: "conda activate {text}"
conda activate: "conda activate "
conda deactivate: "conda deactivate\n"
conda create: "conda create "
conda remove: "conda remove "
conda list: "conda list"
conda env list: "conda env list"
mongo: "mongo"
python: "python "
watch: "watch "
es account: "sacct\n"
es share: "sshare -U\n"
tail dash fine: "tail -f "
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

es cancel: "scancel "
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

tea mux list: "tmux ls"
remove directory: "rmdir "
change mod: "chmod +x "
git revert: "git revert "

open claw models status: "openclaw models status"
open claw onboard: "openclaw onboard"
open claw: "openclaw "

I python: "ipython\n"
python three: "python3 "
which python: "which python"
deactivate: "deactivate"

sudo: "sudo "
sudo renice: "sudo renice -n -10 -p "
jupiter notebook: "jupyter notebook --port 8889"
conan install: "conan install "
nose tests: "nosetests "
kill all dash nine: "killall -9 "
kill dash nine: "kill -9 "
export: "export "
source: "source "
env RC: ".envrc"
envidia smee: "nvidia-smi"
bash ar see: "~/.bashrc"
slurm: "slurm"
diff: "diff "
P S aux grep:
    "ps aux | grep ''"
    key(left)
snake viz: "snakeviz "
real path: "realpath "
sequel light: "sqlite3\n"
H top: "htop\n"

tar compress: "tar -zcvf "
tar decompress: "tar -zxvf "
unzip: "unzip "
# BSD du has no --max-depth
D U dash H: "du -h -d 1"
D F dash H: "df -h"

trunk check: "./trunk check "
trunk format: "./trunk fmt "
trunk daemon shutdown: "./trunk daemon shutdown"

hugo server: "hugo server -D"
hugo new site: "hugo new site "
hugo new content: "hugo new content "

git L F S list files: "git lfs ls-files"
git L F S status: "git lfs status"

mongo shell: "mongosh"

# vim
set pasta: ":set paste\n"
set no pasta: ":set nopaste\n"
set number: ":set nu\n"
editor save: ":w\n"
editor quit: ":q\n"
replace:
    insert(":%s///g")
    key(left)
    key(left)
    key(left)
replace underscores with dashes:
    insert(":s/_/-/g")
replace dashes with underscore:
    insert(":s/-/_/g")

# Harvard cluster
S S H into Harvard cluster: "ssh -YC mtomov13@fasselogin02.rc.fas.harvard.edu"
S C P to Harvard cluster: "scp -r  mtomov13@fasselogin02.rc.fas.harvard.edu"
login to Harvard cluster: "ssh -YC mtomov13@fasselogin02.rc.fas.harvard.edu"
cluster queue: "squeue -u mtomov13 -t RUNNING"
cluster share: "sshare --account=gershman_lab -a"

# docker
docker image list: "docker image ls\n"
docker container list: "docker container ls\n"
docker container list all: "docker container ls -a\n"
docker container kill: "docker container kill "
docker run: "docker run "
docker P S: "docker ps -a"
docker: "docker "
docker run entrypoint bash: "docker run -it --entrypoint /bin/bash "

# AWS (generic only)
A W S login: "aws sso login\n"
A W S list: "aws s3 ls "
A W S sync: "aws s3 sync "
A W S copy: "aws s3 cp "
A W S copy recursive: "aws s3 cp --recursive "

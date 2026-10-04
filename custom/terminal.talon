# shared between ubuntu and mac; each group starts with os: so the groups are OR'd
# platform-specific commands live in terminal_ubuntu.talon / terminal_mac.talon
os: linux
and app: terminal
os: linux
and app: gnome-terminal
os: mac
and app: iterm2
os: mac
and app: apple_terminal
-
copy file: "cp "


claude: "claude"
claude resume: "claude --resume "
claude YOLO: "claude --dangerously-skip-permissions"
claude YOLO mode: "claude --dangerously-skip-permissions "
claude YOLO resume: "claude --dangerously-skip-permissions --resume "
claude docker container: "~/sh/run-av-stack-claude-docker.sh"
claude auth status: "claude auth status"

vim: "vim "
them: "vim "
ten: "vim "
list: "ls "
list latch: "ls -latch "
print directory: "pwd\n"
tea mux: "tmux"
tea mux list: "tmux ls"
tea mux attach: "tmux a -t "
change dear: "cd "
go home: "cd ~\n"
#daddy: "cd ..\n"
grep:
    insert("grep ''")
    key(left)
make dear: "mkdir "
move: "mv "
remove: "rm "
remove directory: "rmdir "
change mod: "chmod +x "
git revert: "git revert "

conda environment list: "conda env list\n"
#conda activate <user.text>: "conda activate {text}"
conda activate: "conda activate "
conda deactivate: "conda deactivate\n"
conda create: "conda create "
conda remove: "conda remove "
conda list: "conda list"
conda env list: "conda env list"


open claw models status: "openclaw models status"
open claw onboard: "openclaw onboard"
open claw: "openclaw "

pip install: "pip install "
pip uninstall: "pip uninstall "
pip freeze: "pip freeze "
python: "python "
I python: "ipython\n"
python three: "python3 "
which python: "which python"
sudo: "sudo "
sudo renice: "sudo renice -n -10 -p "
es cancel: "scancel "
es account: "sacct\n"
jupiter notebook: "jupyter notebook --port 8889"
conan install: "conan install "
nose tests: "nosetests "
kill all dash nine: "killall -9 "
kill dash nine: "kill -9 "
find name: 
    insert("find . -name ''")
    key(left)
set pasta: ":set paste\n"
set no pasta: ":set nopaste\n"
set number: ":set nu\n"
set no number: ":set nu!\n"
vertical split: ":vs "
echo: "echo "
export: "export "
source: "source "
env RC: ".envrc"
exit: "exit"
envidia smee: "nvidia-smi"
watch: "watch "
bash ar see: "~/.bashrc"
tail dash fine: "tail -f "
slurm: "slurm"
diff: "diff "
P S aux grep:
    "ps aux | grep ''"
    key(left)
snake viz: "snakeviz "
real path: "realpath "
deactivate: "deactivate"


# this is for vim, I can't get vim.talon to work
editor save: ":w\n"
vim save: ":w\n"
editor quit: ":q\n"
vim quit: ":q\n"
save quit: ":wq\n"
search: "/"
replace:
    insert(":%s///g")
    key(left)
    key(left)
    key(left)
replace underscores with dashes:
    insert(":s/_/-/g")
replace dashes with underscore:
    insert(":s/-/_/g")

#login to Harvard cluster: "~/sh/harvard_cluster.sh\n"
S S H into Harvard cluster: "ssh -YC mtomov13@fasselogin02.rc.fas.harvard.edu"
S C P to Harvard cluster: "scp -r  mtomov13@fasselogin02.rc.fas.harvard.edu"
login to Harvard cluster: "ssh -YC mtomov13@fasselogin02.rc.fas.harvard.edu"
cluster queue: "squeue -u mtomov13 -t RUNNING"
cluster share: "sshare --account=gershman_lab -a"

docker image list: "docker image ls\n"
docker container list: "docker container ls\n"
docker container list all: "docker container ls -a\n"
docker container kill: "docker container kill "
docker run: "docker run "
docker P S: "docker ps -a"
docker: "docker "
docker run entrypoint bash: "docker run -it --entrypoint /bin/bash "
A W S login: "aws sso login\n"
A W S list: "aws s3 ls "
A W S sync: "aws s3 sync "
A W S copy: "aws s3 cp "
A W S copy recursive: "aws s3 cp --recursive "

sequel light: "sqlite3\n"

trunk check: "./trunk check "
trunk format: "./trunk fmt "
trunk daemon shutdown: "./trunk daemon shutdown"

tar compress: "tar -zcvf "
tar decompress: "tar -zxvf "
unzip: "unzip "
D F dash H: "df -h"
H top: "htop\n"

dear:
    insert("dir()")
    key(left)

hugo server: "hugo server -D"
hugo new site: "hugo new site "
hugo new content: "hugo new content "

git L F S list files: "git lfs ls-files"
git L F S status: "git lfs status"

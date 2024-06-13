app: terminal
app: gnome-terminal
-
copy file: "cp "
copy: key(ctrl-shift-c)
paste: key(ctrl-shift-v)


vim: "vim "
them: "vim "
ten: "vim "
10: "vim "
list: "ls "
list latch: "ls -latch "
print directory: "pwd\n"
tea mux: "tmux"
tea mux attach: "tmux a\n"
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
change mod: "chmod +x "
git revert: "git revert "

conda environment list: "conda env list\n"
conda activate <user.text>: "conda activate {text}"
conda activate: "conda activate "
conda activate new env: "conda activate nuenv"
conda deactivate: "conda deactivate\n"
conda create: "conda create "
conda remove: "conda remove "
conda list: "conda list"

pip install: "pip install "
pip uninstall: "pip uninstall "
pip freeze: "pip freeze "
python: "python "
I python: "ipython\n"
python three: "python3 "
basil: "bazel "
basil run: "bazel run -j 4 "
basil build: "bazel build -j 4 "
basil sink: "bazel sync\n"
basil test: "bazel test --cache_test_results=no "
basil run buildifier: "bazel run :buildifier\n"
basil run install AV stack: "bazel run :install_avstack --install_adp_maps"
basil run install config: "bazel run :install_config"
tox lint: "tox -e lint nuplan_internal"
tox format: "tox -e format nuplan_internal"
sudo: "sudo "
sudo renice: "sudo renice -n 10 -p "
es cancel: "scancel "
es account: "sacct\n"
jupiter notebook: "jupyter notebook\n"
conan install: "conan install "
nose tests: "nosetests "
kill all dash nine: "killall -9 "
kill dash nine: "kill -9 "
find name:
    "find . -name ''"
    key(left)
set paste: ":set paste\n"
set no paste: ":set nopaste\n"
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
distribute: "distribute "
metrics: "metrics "


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

docker image list: "docker image ls\n"
docker container list: "docker container ls\n"
docker container list all: "docker container ls -a\n"
docker container kill: "docker container kill "
docker run: "docker run "
docker: "docker "
docker run entrypoint bash: "docker run -it --entrypoint /bin/bash "
new plan: "nuplan"

drive logs download log: "drivelogs download_log -n "

#A W S list: "aws s3 ls --profile nudeep-developer s3://ml-prod-experiment/exp-data/momchil-tomov/"
#A W S copy: "aws s3 cp --profile nudeep-developer --recursive s3://ml-prod-experiment/exp-data/momchil-tomov/"
#A W S sync: "aws s3 sync --profile nudeep-developer "
A W S new deep developer login: "aws --profile nudeep-developer sso login\n"
A W S login: "aws sso login\n"
A W S list ex data: "aws s3 ls s3://ml-prod-experiment/exp-data/momchil-tomov/"
A W S list: "aws s3 ls "
A W S sync: "aws s3 sync "
A W S copy: "aws s3 cp "
A W S copy recursive: "aws s3 cp --recursive "
A W S copy recursive ex data: "aws s3 cp --recursive s3://ml-prod-experiment/exp-data/momchil-tomov/"
exp C L I login: "expcli login\n"
exp C L I delete: "expcli delete_exp_data --paths /data/exp/momchil-tomov/"
exp C L I create tensorboard: "expcli create_tensorboard --id "
A D P start: "./simulation/applied/scripts/local/adp_start.sh "
A V stack: "av-stack"

trunk check: "./trunk check\n"
trunk format: "./trunk fmt "

tar compress: "tar -zcvf "
tar decompress: "tar -zxvf "
unzip: "unzip "

D U dash H: "du -h --max-depth=1"
D F dash H: "df -h"


S C P from desktop: "scp momchil.tomov@10.17.6.51:"
H top: "htop\n"

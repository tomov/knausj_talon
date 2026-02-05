app: terminal
app: gnome-terminal
-
copy file: "cp "
copy: key(ctrl-shift-c)
pasta: key(ctrl-shift-v)
copy pasta: 
    key(ctrl-shift-c)
    key(ctrl-shift-v)


vim: "vim "
them: "vim "
ten: "vim "
10: "vim "
list: "ls "
list latch: "ls -latch "
print directory: "pwd\n"
tea mux: "tmux"
tea mux list: "tmux ls"
tea mux attach: "tmux a -t "
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
#conda activate <user.text>: "conda activate {text}"
conda activate: "conda activate "
conda deactivate: "conda deactivate\n"
conda create: "conda create "
conda remove: "conda remove "
conda list: "conda list"
conda env list: "conda env list"



pip install: "pip install "
pip uninstall: "pip uninstall "
pip freeze: "pip freeze "
python: "python "
I python: "ipython\n"
python three: "python3 "
which python: "which python"
basil: "bazel "
basil run: "bazel run -j 4 "
#basil run jay four: "bazel run -j 4 "
basil build: "bazel build -j 4 "
basil build debug: "bazel build -c dbg -j 4 "
#basil build jay four: "bazel build -j 4 "
basil sink: "bazel sync\n"
basil test: "bazel test --cache_test_results=no "
basil run buildifier: "bazel run :buildifier\n"
basil run install AV stack: "bazel run :install_avstack"
#basil run install AV stack: "bazel run :install_avstack --install_adp_maps"
basil run get calibration file: "bazel run //config:get_calibration_file -- --vehicle_id="
basil run install maps: "bazel run :install_maps --install_map=us-nv-las-vegas-strip"
basil run install config: "bazel run :install_config"
basil run pip update: "bazel run //:pip_deps.update"
basil run log player: "bazel run //autonomy_tools/logplayer/logplayer-gui:logplayer-gui -- -p "
basil run generate test data: "bazel run //infrastructure/messages/test:generate_test_data"
run autonomy process plan zero: "~/sh/run_autonomy_process_plan_zero.sh"
run autonomy process prediction: "~/sh/run_autonomy_process_prediction.sh"
tox lint: "tox -e lint nuplan_internal"
tox format: "tox -e format nuplan_internal"
sudo: "sudo "
sudo renice: "sudo renice -n -10 -p "
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
set pasta: ":set paste\n"
set no pasta: ":set nopaste\n"
set number: ":set nu\n"
set no number: ":set nu!\n"
vertical split: ":vs "
echo: "echo "
export: "export "
source: "source "
env RC: ".envrc"
exit: "exit()\n"
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
reload CUDA kernel: "sudo rmmod nvidia_uvm; sudo modprobe nvidia_uvm"
check CUDA kernel: "python -c \"import torch; print('CUDA available:', torch.cuda.is_available())\""


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
A W S sync ex data: "aws s3 sync s3://ml-prod-experiment/exp-data/momchil-tomov/"
A W S copy: "aws s3 cp "
A W S copy recursive: "aws s3 cp --recursive "
A W S copy recursive ex data: "aws s3 cp --recursive s3://ml-prod-experiment/exp-data/momchil-tomov/"
exp C L I login: "expcli login\n"
exp C L I delete: "expcli delete_exp_data --paths /data/exp/momchil-tomov/"
exp C L I delete cluster: "expcli delete_cluster --cluster_id "
exp C L I create tensorboard: "expcli create_tensorboard --id "
exp C L I cancel ray job: "expcli cancel_ray_job --job_id "
exp C L I list cluster config: "expcli list_cluster_config"
A D P start: "./simulation/applied/scripts/local/adp_start.sh "
A V stack: "av-stack"

basil build activate: "bazel build :activate\n source bazel-bin/activate.sh\n"

sequel light: "sqlite3\n"

trunk check: "./trunk check "
trunk format: "./trunk fmt "

tar compress: "tar -zcvf "
tar decompress: "tar -zxvf "
unzip: "unzip "

D U dash H: "du -h --max-depth=1"
D F dash H: "df -h"

launch M S E: "cd ~/nuDeep/ml_tools/mse_v2/ml_planner/streamlit_app/\nstreamlit run home.py --server.fileWatcherType poll\n"
launch A V test JS: "cd ~/avtest.js/out/build\n./run -d /data/exp/momchil-tomov/" 

S C P from desktop: "scp momchil.tomov@10.17.6.51:"
H top: "htop\n"

hugo server: "hugo server -D"
hugo new site: "hugo new site "
hugo new content: "hugo new content "

git L F S list files: "git lfs ls-files"
git L F S status: "git lfs status"

mongo shell: mongosh

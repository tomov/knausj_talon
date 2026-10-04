app: terminal
app: gnome-terminal
-
copy: key(ctrl-shift-c)
pasta: key(ctrl-shift-v)
copy pasta: 
    key(ctrl-shift-c)
    key(ctrl-shift-v)
cap pasta: 
    key(ctrl-shift-c)
    key(ctrl-shift-v)
10: "vim "
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
basil run install AV stack install maps: "bazel run :install_avstack --install_adp_maps"
basil run get calibration file: "bazel run //config:get_calibration_file -- --vehicle_id="
basil run install maps: "bazel run :install_maps --install_map=us-nv-las-vegas-strip"
basil run install config: "bazel run :install_config"
basil run pip update: "bazel run //:pip_deps.update"
basil run log player: "bazel run //autonomy_tools/logplayer/logplayer-gui:logplayer-gui -- -p "
basil run generate test data: "bazel run //infrastructure/messages/test:generate_test_data"
basil run compile commands: "bazel run //:compile_commands"

# fix GlobalProtect VPN, make it stop opening Slack and open Chrome instead
set default browser: "xdg-settings get default-web-browser; xdg-settings set default-web-browser google-chrome.desktop"

run autonomy process plan zero: "~/sh/run_autonomy_process_plan_zero.sh"
run autonomy process prediction: "~/sh/run_autonomy_process_prediction.sh"
data exp dear: "/data/exp/momchil.tomov/"
tox lint: "tox -e lint nuplan_internal"
tox format: "tox -e format nuplan_internal"
#distribute: "distribute "
#metrics: "metrics "

reload CUDA kernel: "sudo rmmod nvidia_uvm; sudo modprobe nvidia_uvm"
check CUDA kernel: "python -c \"import torch; print('CUDA available:', torch.cuda.is_available())\""


source M L env: "source ml/.envrc"
source M L env no sink: "source ml/.envrc --no-sync"
source M L env create: "source ml/.envrc --create"
sudo restart docker: "sudo systemctl restart docker"
sudo service docker restart: "sudo service docker restart"
new plan: "nuplan"

run local simian: ". .envrc; ./simulation/applied/scripts/local/adp_start_host_build.sh"

update drive logs credentials: "bazel run //:download_log -- -n foobar"

drive logs download log: "drivelogs download_log -n "

#A W S list: "aws s3 ls --profile nudeep-developer s3://ml-prod-experiment/exp-data/momchil-tomov/"
#A W S copy: "aws s3 cp --profile nudeep-developer --recursive s3://ml-prod-experiment/exp-data/momchil-tomov/"
#A W S sync: "aws s3 sync --profile nudeep-developer "
A W S new deep developer login: "aws --profile nudeep-developer sso login\n"
A W S list ex data: "aws s3 ls s3://ml-prod-experiment/exp-data/momchil-tomov/"
A W S sync ex data: "aws s3 sync s3://ml-prod-experiment/exp-data/momchil-tomov/"
A W S copy recursive ex data: "aws s3 cp --recursive s3://ml-prod-experiment/exp-data/momchil-tomov/"

exp C L I login: "expcli login\n"
exp C L I delete: "expcli delete_exp_data --paths /data/exp/momchil-tomov/"
exp C L I delete cluster: "expcli delete_cluster --cluster_id "
exp C L I create tensorboard: "expcli create_tensorboard --exp_dir /data/exp/momchil-tomov/  --id "
# expcli create_tensorboard --id pz-gm-fix-260331-130928 --exp_dir /data/exp/momchil-tomov/pz_gm_fix/pz_gm_fix_260331_130928
exp C L I cancel ray job: "expcli cancel_ray_job --job_id "
exp C L I list cluster config: "expcli list_cluster_config"
exp C L I upgrade: "pip install expapicli --upgrade"
A D P start: "./simulation/applied/scripts/local/adp_start.sh "
A V stack: "av-stack"

basil build activate: "bazel build :activate\n source bazel-bin/activate.sh\n"

D U dash H: "du -h --max-depth=1"

launch M S E: "cd ~/nuDeep/ml_tools/mse_v2/ml_planner/streamlit_app/\nstreamlit run home.py --server.fileWatcherType poll\n"
launch A V test JS: "cd ~/avtest.js/out/build\n./run -d /data/exp/momchil-tomov/" 

S C P from desktop: "scp momchil.tomov@10.17.6.51:"

mongo shell: mongosh

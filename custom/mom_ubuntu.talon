# all 
# python 
# 
-
copy: key(ctrl-c)
pasta: key(ctrl-v)

search:
    key(ctrl-f)
motional: "motional"

simian: "simian"
simian latest log: "simian-latest-log"
simian logs: "simian-logs"
setup simian: "setup_simian.sh"

basil run a v test log home Scotty: "bazel run :avtestlog -- /home/scotty/"
#basil run a v test log: "bazel run -j 4 //av/planning_controls/standalone-bin/AVTestLog -- "
basil run a v test log: "bazel run -j 4 :avtestlog -- "
basil run iron hide: "bazel run :ironhide "
#basil run planner analyzer: "bazel run av/planning_controls/analysis_tools/analyzers:pns "
basil run planner analyzer: "bazel run -j 4 analyzer-pns -- "
basil run plan zero analyzer: "bazel run -j 4 analyzer-pz -- "
basil run smoother analyzer: "bazel run -j 4 analyzer-smoother -- "
#basil run plan zero analyzer: "bazel run -j 4 :analyzer-pz-ol"
basil build autonomy process: "bazel build //faster/graphs/autonomy:autonomy_process"
# -- -l
# -- [test]
basil run M L P analyzer: "bazel run -j 4 analyzer-mlp " 
# drivelog or path/to/log
drive logs download log: "drivelogs download_log -n "
#insert_wait = 0
#    key_wait = 20
#
#
#

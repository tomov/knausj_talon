# all 
# python 
# 
-
copy: key(ctrl-c)
paste: key(ctrl-v)
#cut: key(ctrl-x)

# vim
new line: "$a\n" 
slap:
    key(enter)

length: 
    "len()"
    key(left)
print: 
    "print()"
    key(left)
assert: "assert"
num pie: "numpy"
torch: "torch"
torch tensor: "torch.Tensor"
tensor: "Tensor"
torch size: "torch.Size"
torch clone: 
    "torch.clone()"
    key(left)
torch load: 
    "torch.load()"
    key(left)
torch save: 
    "torch.save()"
    key(left)
dunder init: "__init__"
is not none: " is not None"
num pie array: 
    "np.array()"
    key(left)
num pie where:
    "np.where()"
    key(left)
num pie min:
    "np.min()"
    key(left)
num pie max:
    "np.max()"
    key(left)
num pie mean: 
    "np.mean()"
    key(left)
num pie delete:
    "np.delete()"
    key(left)
num pie sum:
    "np.sum()"
    key(left)
num pie cum sum:
    "np.cumsum()"
    key(left)
num pie any:
    "np.any()"
    key(left)
torch array: 
    "torch.array()"
    key(left)
torch log:
    "torch.log()"
    key(left)
torch sum:
    "torch.sum()"
    key(left)
torch arg max:
    "torch.argmax()"
    key(left)
torch set print options: "torch.set_printoptions(edgeitems=20, sci_mode=False, precision=3, linewidth=200)"
append: 
    "append()"
    key(left)
range:
    "range()"
    key(left)
import <user.text>: "import {text}"
import: "import "
pie world: "pyworld"
spatial map: "spatialmap"
pie a vee utils: "pyavutils"
a vee map: "avmap"
self: "self"
get attribute: 
    "getattr()"
    key(left)
pandas: "pandas"
DataFrame: "DataFrame"
scene context: "SceneContext"
keys: "keys()"
magic mock: 
    insert("MagicMock()")
    key(left)
int: "int"
bool: "bool"
set trace: "import pdb; pdb.set_trace()"
embed: "from IPython import embed; embed()"
print stack: "import traceback; traceback.print_stack()"

get ego track: "get_ego_track()"
get route: "get_route()"
get tracks: "get_tracks()"
get base state: "get_base_state()"
get center pose: "get_center_pose()"
get velocity ex: "get_velocity_x()"
get velocity why: "get_velocity_y()"
get velocity long: "get_velocity_lon()"
get ex: "getX()"
get why: "getY()"
get heading: "getHeading()"
route: "route"
get current goal pose: "get_current_goal_pose()"
ego pose: "ego pose"
snake ego pose: "ego_pose"
snake ego is safe: "ego_is_safe"
snake ego is comfortable: "ego_is_comfortable"
snake ego is making progress: "ego_is_making_progress"
snake ego progress: "ego_progress"
hammer query interface: "QueryInterface"
krauss: "krauss"
hammer krauss: "Krauss"
I python: "IPython "
from: "from "
dear: 
    insert("dir()")
    key(left)
squares: 
    insert("[]")
    key(left)
braces: 
    insert("{}")
    key(left)
ordered dick: "OrderedDict"
dick: "dict()"
return: "return "
list: "list"
nutonomy: "nutonomy" 
topple: "tuple"
yaml: "yaml"
Jason: "json"
snake closed loop replay: "closed_loop_replay"
snake closed loop sim: "closed_loop_sim"
snake open loop replay: "open_loop_replay"
snake open loop sim: "open_loop_sim"
borromean: "borromean"
pie borromean rings: "pyborromean_rings"
pie: "py"
eval: "eval"
decel: "decel"
snake world trash: "world_traj"

convert dots to slashes:
    insert(":s/\./\//g")
convert slashes to dots:
    insert(":s/\//\./g")

goal pose: "goal pose"
snake goal pose: "goal_pose"
snake ego goal pose: "ego_goal_pose"
pose: "pose"
snake batch size: "batch_size"
batch size: "batch size"

tensor board: "tensorboard"
jira: "JIRA"

search:
    key(ctrl-f)

pit dot:
    key(pgdown)
motional: "motional"

simian: "simian"
simian latest log: "simian-latest-log"
simian logs: "simian-logs"
setup simian: "setup_simian.sh"
Prometheus: "Prometheus"

basil run a v test log home Scotty: "bazel run :avtestlog -- /home/scotty/"
basil run a v test log: "bazel run :avtestlog -- "
basil run iron hide: "bazel run :ironhide "
basil run planner analyzer: "bazel run av/planning_controls/analysis_tools/determinism/analyzers:pns "
drive logs download log: "drivelogs download_log -n "


legacy mouse: tracking.control1_toggle()

settings():
    speech.timeout = 0.350
#insert_wait = 0
#    key_wait = 20
#
#
#

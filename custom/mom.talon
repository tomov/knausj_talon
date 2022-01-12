# all 
# python 
# 
-
copy: key(ctrl-c)
paste: key(ctrl-v)
#cut: key(ctrl-x)

# vim
new: "$a\n" 

length: 
    "len()"
    key(left)
print: 
    "print()"
    key(left)
assert: "assert"
num pie: "np"
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
append: 
    "append()"
    key(left)
embed: "embed"
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
keys: "keys()"
magic mock: 
    insert("MagicMock()")
    key(left)
int: "int"
bool: "bool"
set trace: "import pdb; pdb.set_trace()"

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
dear: "dir"
ordered dick: "OrderedDict"
dick: "dict()"
return: "return "
list: "list"
conan: "conan" 
nutonomy: "nutonomy" 
topple: "tuple"
yaml: "yaml"
snake closed loop replay: "closed_loop_replay"
snake closed loop sim: "closed_loop_sim"
snake open loop replay: "open_loop_replay"
snake open loop sim: "open_loop_sim"
pie: "py"

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

settings():
    speech.timeout = 0.150
#insert_wait = 0
#    key_wait = 20

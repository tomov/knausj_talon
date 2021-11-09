# all 
# python 
# 
-
copy: key(ctrl-c)
paste: key(ctrl-v)
cut: key(ctrl-x)

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

get ego track: "get_ego_track()"
get tracks: "get_tracks()"
get base state: "get_base_state()"
get center pose: "get_center_pose()"
get velocity ex: "get_velocity_x()"
get velocity why: "get_velocity_y()"
get ex: "get_x()"
get why: "get_y()"
get heading: "get_heading()"
ego pose: "ego pose"
snake ego pose: "ego_pose"
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

goal pose: "goal pose"
snake goal pose: "goal_pose"
pose: "pose"
snake batch size: "batch_size"
batch size: "batch size"

tensor board: "tensorboard"

search:
    key(ctrl-f)

pit dot:
    key(pgdown)

settings():
    speech.timeout = 0.150
#insert_wait = 0
#    key_wait = 20

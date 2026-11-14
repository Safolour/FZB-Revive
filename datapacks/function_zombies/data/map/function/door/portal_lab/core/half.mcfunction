# First bomb: close/refresh the door and lower its price.
execute unless function map:door/portal_lab/core/restore_blocks run return fail
data modify storage map:r40 core_door_active set value 1b
scoreboard players set lab_core door.open 0
scoreboard players set lab_core door.price 1073741824
function map:door/portal_lab/core/spawn

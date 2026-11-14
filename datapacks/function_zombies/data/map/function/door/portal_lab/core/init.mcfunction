# The lab game start calls this once; later Boss phases adjust or restore the door.
execute unless function map:door/portal_lab/core/restore_blocks run return fail
data modify storage map:r40 core_door_active set value 1b
scoreboard players set lab_core door.open 0
scoreboard players set lab_core door.price 2147483647
function map:door/portal_lab/core/spawn

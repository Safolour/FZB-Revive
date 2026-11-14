# Second bomb: close/refresh the door and make it free.
execute unless function map:door/portal_lab/core/restore_blocks run return fail
data modify storage map:r40 core_door_active set value 1b
scoreboard players set lab_core door.open 0
scoreboard players set lab_core door.price 0
function map:door/portal_lab/core/spawn

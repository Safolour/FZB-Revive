execute as @e[tag=door,tag=lab_core] run function system:death
execute unless function map:door/portal_lab/core/restore_blocks run return fail
data remove storage map:r40 core_door_active

# Migrate an already-running lab game without replacing the door blocks.
execute unless loaded 299 94 171 run return 0
execute unless block 299 94 171 minecraft:black_stained_glass run return 0
execute unless block 301 95 172 minecraft:waxed_weathered_chiseled_copper run return 0
execute unless score lab_core door.price = lab_core door.price run scoreboard players set lab_core door.price 2147483647
scoreboard players set lab_core door.open 0
data modify storage map:r40 core_door_active set value 1b
function map:door/portal_lab/core/spawn

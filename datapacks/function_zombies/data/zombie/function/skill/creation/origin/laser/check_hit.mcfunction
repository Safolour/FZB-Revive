scoreboard players operation #target origin.target = @s uuid
scoreboard players set #laser.blocked origin.tool_cfg 0
execute as @e[type=marker,tag=origin.laser.hitmark] if score @s origin.owner = #owner origin.owner if score @s origin.fx_id = #fx origin.fx_id if score @s origin.target = #target origin.target run scoreboard players set #laser.blocked origin.tool_cfg 1
execute if score #laser.blocked origin.tool_cfg matches 1 run return 0
execute at @s summon marker run function zombie:skill/creation/origin/laser/hitmark
function zombie:skill/creation/origin/laser/hit

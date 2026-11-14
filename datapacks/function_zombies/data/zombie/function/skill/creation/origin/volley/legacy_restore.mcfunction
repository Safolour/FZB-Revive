execute unless score @s origin.tool matches 1..2 run return 0
scoreboard players operation #owner origin.owner = @s origin.owner
scoreboard players set #legacy origin.tool_cfg 0
execute as @e[type=marker,tag=origin.tool.state] if score @s origin.owner = #owner origin.owner run scoreboard players set #legacy origin.tool_cfg 1
execute if score #legacy origin.tool_cfg matches 1 run function zombie:skill/creation/origin/tool_restore
execute if score #legacy origin.tool_cfg matches 0 run data merge entity @s {NoAI:0b,Glowing:0b}
scoreboard players set @s origin.tool 0
scoreboard players set @s origin.tool_age 0

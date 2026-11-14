execute store result score #volley.start origin.tool_cfg run function zombie:skill/creation/origin/volley/begin
execute if score #volley.start origin.tool_cfg matches 1 run scoreboard players set @s origin.shovel_cd 220
execute if score #volley.start origin.tool_cfg matches 1 run return 1
return 0

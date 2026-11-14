execute unless score #pickaxe.max_active origin.tool_cfg matches 1.. run scoreboard players set #pickaxe.max_active origin.tool_cfg 2
scoreboard players operation #owner origin.owner = @s origin.owner
scoreboard players set #pickaxe.active origin.tool_cfg 0
execute as @e[type=armor_stand,tag=origin.pickaxe.anchor] if score @s origin.owner = #owner origin.owner run scoreboard players add #pickaxe.active origin.tool_cfg 1
execute if score #pickaxe.active origin.tool_cfg >= #pickaxe.max_active origin.tool_cfg run scoreboard players set @s origin.pick_cd 20
execute if score #pickaxe.active origin.tool_cfg >= #pickaxe.max_active origin.tool_cfg run return 0
execute store result score #volley.start origin.tool_cfg run function zombie:skill/creation/origin/volley/begin
execute if score #volley.start origin.tool_cfg matches 1 run item replace entity @s weapon.mainhand with minecraft:diamond_pickaxe
execute if score #volley.start origin.tool_cfg matches 1 run scoreboard players set @s origin.pick_cd 700
execute if score #volley.start origin.tool_cfg matches 1 run return 1
return 0

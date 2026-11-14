execute unless score #pickaxe.max_active origin.tool_cfg matches 1.. run scoreboard players set #pickaxe.max_active origin.tool_cfg 2
scoreboard players operation #owner origin.owner = @s origin.owner
scoreboard players set #pickaxe.active origin.tool_cfg 0
execute as @e[type=armor_stand,tag=origin.pickaxe.anchor] if score @s origin.owner = #owner origin.owner run scoreboard players add #pickaxe.active origin.tool_cfg 1
execute if score #pickaxe.active origin.tool_cfg >= #pickaxe.max_active origin.tool_cfg run return 0
playsound minecraft:entity.snowball.throw hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 1 1
execute positioned ~ ~1.5 ~ summon armor_stand run function zombie:skill/creation/origin/pickaxe/setup
function zombie:skill/creation/origin/pickaxe/finish

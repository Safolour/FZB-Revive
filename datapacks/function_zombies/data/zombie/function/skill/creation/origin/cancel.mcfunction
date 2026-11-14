scoreboard players set #owner origin.owner -1
scoreboard players operation #owner origin.owner = @s origin.owner
execute if score @s origin.tp_glow matches 1.. run function zombie:skill/creation/origin/tp_glow_clear
tag @s remove origin.brutality.swing
scoreboard players operation #cancel.mode origin.tool_cfg = @s origin.tool
execute if score @s origin.tool matches 1..2 run function zombie:skill/creation/origin/volley/legacy_restore
function zombie:skill/creation/origin/volley/finish
execute if score #cancel.mode origin.tool_cfg matches 3 run scoreboard players set #cancel.state origin.tool_cfg 0
execute if score #cancel.mode origin.tool_cfg matches 3 as @e[type=marker,tag=origin.tool.state] if score @s origin.owner = #owner origin.owner run scoreboard players set #cancel.state origin.tool_cfg 1
execute if score #cancel.mode origin.tool_cfg matches 3 run function zombie:skill/creation/origin/laser/finish
execute if score @s origin.volley matches 1 run function zombie:skill/creation/origin/volley/finish
execute if entity @s[tag=origin.transition] as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect clear @s minecraft:darkness
execute if entity @s[tag=origin.transition] as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run effect clear @s minecraft:night_vision
execute if entity @s[tag=origin.transition] as @a[scores={system.room=4..}] if score @s origin.p_owner = #owner origin.owner run scoreboard players set @s origin.p_owner 0
execute as @e[tag=origin.combat_fx] if score @s origin.owner = #owner origin.owner run kill @s
execute if score @s origin.cast matches 1.. run data merge entity @s {NoAI:0b,Glowing:0b}
execute if score #cancel.mode origin.tool_cfg matches 3 if score #cancel.state origin.tool_cfg matches 0 run data merge entity @s {NoAI:0b,Glowing:0b}
execute if score @s origin.cast matches 1.. if entity @s[team=origin.red] run team join mob @s
execute if score @s origin.cast matches 1.. if entity @s[team=origin.laser.dark_red] run team join mob @s
scoreboard players set @s origin.cast 0
scoreboard players set @s origin.big 0
scoreboard players set @s origin.tool 0
scoreboard players set @s origin.busy 0

scoreboard players operation #owner origin.owner = @s origin.owner
execute unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..100] run return run function zombie:skill/creation/origin/sword/finish
scoreboard players add @s origin.age 1
scoreboard players add @s origin.fx_age 1
scoreboard players operation #scale origin.age = @s origin.age
execute if score @s origin.age matches 1..25 as @e[type=item_display,tag=origin.sword.model] if score @s origin.owner = #owner origin.owner run function zombie:skill/creation/origin/sword/scale
# Rotate each ascent and hover without teleporting the passenger. The lifetime age only controls initial growth.
execute if score @s origin.stage matches 1..2 as @e[type=item_display,tag=origin.sword.model] if score @s origin.owner = #owner origin.owner at @s run rotate @s ~8 ~
execute if score @s origin.stage matches 1..3 run particle minecraft:enchanted_hit ~ ~ ~ 1 3 1 0.5 2 force @a[scores={system.room=4..,particle=0..1},distance=..80]
execute if score @s origin.stage matches 1 run function zombie:skill/creation/origin/sword/spiral
execute if score @s origin.stage matches 1 if score @s origin.fx_age matches 2 run playsound minecraft:block.beacon.power_select hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 1.5 0
execute if score @s origin.stage matches 1 if score @s origin.fx_age matches 11 run playsound minecraft:block.beacon.power_select hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 1.5 0
execute if score @s origin.stage matches 1 if score @s origin.fx_age matches 20 run playsound minecraft:block.beacon.power_select hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 1.5 0
execute if score @s origin.stage matches 1 run function zombie:skill/creation/origin/sword/fly
execute if score @s origin.stage matches 2 run function zombie:skill/creation/origin/sword/hover
execute if score @s origin.stage matches 3 run function zombie:skill/creation/origin/sword/fall
execute if score @s origin.stage matches 4 if score @s origin.swings matches ..2 if score @s origin.fx_age matches 20.. run function zombie:skill/creation/origin/sword/retarget
execute if score @s origin.stage matches 4 if score @s origin.swings matches 3.. if score @s origin.fx_age matches 4.. run return run function zombie:skill/creation/origin/sword/finish
execute if score @s origin.stage matches 1..3 at @s positioned ~ 92.1 ~ as @e[type=item_display,tag=origin.sword.shadow] if score @s origin.owner = #owner origin.owner run tp @s ~ ~ ~

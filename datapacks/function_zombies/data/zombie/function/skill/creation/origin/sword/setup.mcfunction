tag @s add origin.combat_fx
tag @s add origin.sword_fx
tag @s add origin.sword.anchor
tag @s add origin.sword.new
scoreboard players operation @s origin.owner = #owner origin.owner
scoreboard players set @s origin.fx_age 0
scoreboard players set @s origin.stage 1
scoreboard players set @s origin.age 0
scoreboard players set @s origin.swings 0
data merge entity @s {Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b}
execute summon item_display run function zombie:skill/creation/origin/sword/model
execute as @e[type=item_display,tag=origin.sword.model] if score @s origin.owner = #owner origin.owner run ride @s mount @e[type=armor_stand,tag=origin.sword.new,limit=1]
execute positioned ~ 92.1 ~ summon item_display run function zombie:skill/creation/origin/sword/shadow
tag @s remove origin.sword.new
execute positioned ~ ~-2 ~ run playsound minecraft:entity.lightning_bolt.thunder hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 2
function zombie:skill/creation/origin/sword/retarget
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10 force @a[scores={system.room=4..,particle=0..1},distance=..80]

tag @s add origin.combat_fx
tag @s add origin.pickaxe_fx
tag @s add origin.pickaxe.anchor
scoreboard players operation @s origin.owner = #owner origin.owner
scoreboard players add #next origin.fx_id 1
scoreboard players operation @s origin.fx_id = #next origin.fx_id
scoreboard players operation #fx origin.fx_id = @s origin.fx_id
scoreboard players set @s origin.fx_age 0
scoreboard players set @s origin.stage 0
data merge entity @s {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Silent:1b}
execute if entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] run tp @s ~ ~ ~ facing entity @p[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] eyes
tag @s add origin.pickaxe.new
execute at @s summon item_display run function zombie:skill/creation/origin/pickaxe/model
execute as @e[type=item_display,tag=origin.pickaxe.model] if score @s origin.fx_id = #fx origin.fx_id run ride @s mount @e[type=armor_stand,tag=origin.pickaxe.new,limit=1]
tag @s remove origin.pickaxe.new
execute at @s run function zombie:skill/creation/origin/pickaxe/gravity_init

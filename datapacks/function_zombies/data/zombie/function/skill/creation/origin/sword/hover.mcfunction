execute if score @s origin.fx_age matches 9 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 3 1
execute if score @s origin.fx_age matches 9 positioned ~ ~-1.15 ~ run function zombie:skill/creation/origin/sword/hover_burst
execute if score @s origin.fx_age matches 9 run playsound minecraft:entity.allay.death hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 3 0
execute if score @s origin.fx_age matches 9 as @a[scores={system.room=4..},distance=..80] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 2 1
execute if score @s origin.fx_age matches 18 run playsound minecraft:entity.wither.shoot hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 0
execute if score @s origin.fx_age matches 9 run title @a[scores={system.room=4..},distance=..80] subtitle {translate:"zb.zombie.origin.title.0"}
execute if score @s origin.fx_age matches 9 run title @a[scores={system.room=4..},distance=..80] title {translate:"zb.zombie.laser"}
execute if score @s origin.fx_age matches 9 run tellraw @a[scores={system.room=4..},distance=..80] {translate:"zb.zombie.origin.tellraw.0"}
execute if score @s origin.fx_age matches 18.. run scoreboard players set @s origin.stage 3
execute if score @s origin.stage matches 3 run scoreboard players set @s origin.fx_age 0

execute if score @s origin.tp_glow matches 1.. run function zombie:skill/creation/origin/tp_glow_clear
playsound minecraft:item.trident.thunder hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 0
playsound minecraft:block.beacon.activate hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 1
execute as @a[scores={system.room=4..},distance=..80] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 2 1
scoreboard players set @s origin.cast 1
scoreboard players operation #owner origin.owner = @s origin.owner
scoreboard players set @s zombie.skill_timer 20
execute if score @s origin.big matches 0 run team join origin.red @s
execute if score @s origin.big matches 1 run team join origin.laser.dark_red @s
data merge entity @s {Glowing:1b,NoAI:1b}

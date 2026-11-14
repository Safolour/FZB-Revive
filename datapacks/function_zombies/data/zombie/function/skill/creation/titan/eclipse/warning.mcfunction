function zombie:skill/creation/titan/teleport/glow_clear
team join titan.dark_red @s
data merge entity @s {NoAI:1b,NoGravity:1b,Glowing:1b,Rotation:[0f,0f],Motion:[0d,0d,0d]}
execute as @a[scores={system.room=4..}] run tellraw @s {translate:"zb.zombie.titan.tellraw.0",with:[{translate:"zb.zombie.name.creation.titan"},{translate:"zb.zombie.name.creation.titan.eclipse"}]}
execute as @a[scores={system.room=4..}] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 2 1
execute as @a[scores={system.room=4..}] run title @s reset
execute as @a[scores={system.room=4..}] run title @s times 0 40 0
execute as @a[scores={system.room=4..}] run title @s title {translate:"zb.zombie.laser"}
execute as @a[scores={system.room=4..}] run title @s subtitle {translate:"zb.zombie.titan.title.0"}
playsound minecraft:entity.warden.sonic_charge hostile @a[scores={system.room=4..}] ~ ~ ~ 3 0
playsound minecraft:entity.warden.sonic_charge hostile @a[scores={system.room=4..}] ~ ~ ~ 3 1
playsound minecraft:entity.warden.sonic_charge hostile @a[scores={system.room=4..}] ~ ~ ~ 3 2
playsound minecraft:block.sculk_shrieker.shriek hostile @a[scores={system.room=4..}] ~ ~ ~ 3 0
playsound minecraft:block.sculk_shrieker.shriek hostile @a[scores={system.room=4..}] ~ ~ ~ 3 1
playsound minecraft:block.sculk_shrieker.shriek hostile @a[scores={system.room=4..}] ~ ~ ~ 3 2

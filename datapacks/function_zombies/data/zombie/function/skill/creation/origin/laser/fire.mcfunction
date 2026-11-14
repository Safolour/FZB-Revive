scoreboard players operation #owner origin.owner = @s origin.owner
playsound minecraft:entity.warden.sonic_boom hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 1
playsound minecraft:entity.puffer_fish.blow_out hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 1
playsound minecraft:entity.dolphin.death hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 0
execute rotated ~ 0 positioned ~ ~1.2 ~ positioned ^ ^ ^0.8 summon armor_stand run function zombie:skill/creation/origin/laser/setup

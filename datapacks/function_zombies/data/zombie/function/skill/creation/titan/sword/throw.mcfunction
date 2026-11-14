scoreboard players operation #owner origin.owner = @s origin.owner
# Held-item hand origin: the same 6.208152 height occurs in all four original recordings.
execute rotated ~ 0 positioned ^-3 ^6.208152 ^3.3 summon marker run function zombie:skill/creation/titan/sword/projectile
playsound minecraft:item.trident.throw hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 3 0
item replace entity @s weapon.mainhand with minecraft:air
execute unless entity @s[tag=titan.scatter.cast] run data merge entity @s {Glowing:0b}
execute unless entity @s[tag=titan.scatter.cast] run team join mob @s
# 09/30 and 10/14 attribute deltas are Slowness I -> IV on release, then clear after one second.
effect give @s minecraft:slowness 1 3 true

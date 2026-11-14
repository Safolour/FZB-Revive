playsound minecraft:entity.lightning_bolt.impact hostile @a[scores={system.room=4..},distance=..64] ~ ~ ~ 2 1
playsound minecraft:entity.lightning_bolt.thunder hostile @a[scores={system.room=4..},distance=..64] ~ ~ ~ 2 1
function zombie:skill/creation/origin/lightning/large_rings
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..8] at @s run function zombie:skill/creation/origin/lightning/hit
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..13] at @s run function zombie:skill/creation/origin/lightning/hit
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..18] at @s run function zombie:skill/creation/origin/lightning/hit

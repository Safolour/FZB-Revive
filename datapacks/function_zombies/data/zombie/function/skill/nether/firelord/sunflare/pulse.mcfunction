# Compare horizontal positions so jumping does not change which side of the circle a player is on.
execute store result score #flare.x fl.sunflare run data get entity @s Pos[0] 100
execute store result score #flare.z fl.sunflare run data get entity @s Pos[2] 100
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..}] at @s run function zombie:skill/nether/firelord/sunflare/player

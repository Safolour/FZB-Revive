execute as @e[type=minecraft:marker,tag=p5.floor] at @s run function zombie:skill/nether/firelord/p5/hazards/floor_tick
function zombie:skill/nether/firelord/p5/hazards/slime_tick

execute as @a[gamemode=adventure,scores={stat.player=1}] at @s run function zombie:skill/nether/firelord/p5/hazards/ray_track
execute as @e[type=minecraft:marker,tag=p5.raysource] at @s run function zombie:skill/nether/firelord/p5/hazards/ray_source
execute as @e[type=minecraft:marker,tag=p5.shooter] at @s run function zombie:skill/nether/firelord/p5/hazards/shooter_tick
execute as @e[type=minecraft:marker,tag=p5.raybullet] at @s run function zombie:skill/nether/firelord/p5/hazards/ray_tick
execute as @e[type=minecraft:marker,tag=p5.arrowbullet] at @s run function zombie:skill/nether/firelord/p5/hazards/arrow_tick
function zombie:skill/nether/firelord/p5/hazards/animate

# Temporary water placement disabled; cleanup remains active.
function zombie:skill/nether/firelord/p5/hazards/lava_tick

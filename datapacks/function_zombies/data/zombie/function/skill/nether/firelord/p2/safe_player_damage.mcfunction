scoreboard players operation #shielddamage zombie.health = d health.operation
execute if score #shielddamage zombie.health matches 1.. as @e[type=marker,tag=firelord.p2.safe,distance=..5,sort=nearest,limit=1] at @s run function zombie:skill/nether/firelord/p2/safe_hit
scoreboard players reset d health.operation
scoreboard players reset @s health.damage_resisted

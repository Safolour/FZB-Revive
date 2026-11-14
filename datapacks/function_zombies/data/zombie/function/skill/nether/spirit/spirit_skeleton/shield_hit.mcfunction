scoreboard players operation #shielddamage zombie.health = spiritskeleton zombie.skill.damage
execute at @s positioned ~ ~-1.5 ~ as @e[type=marker,tag=firelord.p2.safe,distance=..5,sort=nearest,limit=1] at @s run function zombie:skill/nether/firelord/p2/safe_hit
kill @s

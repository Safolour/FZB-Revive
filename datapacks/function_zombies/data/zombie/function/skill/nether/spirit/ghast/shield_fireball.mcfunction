scoreboard players operation #shielddamage zombie.health = spiritghast.fireball zombie.skill.damage
execute at @s as @e[type=marker,tag=firelord.p2.safe,distance=..5,sort=nearest,limit=1] at @s run function zombie:skill/nether/firelord/p2/safe_hit
kill @s

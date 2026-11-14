scoreboard players set #shielddamage zombie.health 60
execute if entity @s[tag=skill.firelord.big] run scoreboard players set #shielddamage zombie.health 240
execute as @e[type=marker,tag=firelord.p2.safe,distance=..5,sort=nearest,limit=1] at @s run function zombie:skill/nether/firelord/p2/safe_hit
function zombie:skill/nether/firelord/fire/remove

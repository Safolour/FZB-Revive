playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 10 2
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 10 1
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 10 0

particle white_ash 300 97 150 7 10 15 0 100000 force @a[scores={particle=0}]

execute as @a[scores={stat.player=1},distance=..100] at @s run function zombie:skill/nether/spirit/annihilate/damage

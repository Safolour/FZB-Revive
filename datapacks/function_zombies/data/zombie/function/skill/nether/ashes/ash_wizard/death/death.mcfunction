particle flash ~ ~1.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle gust ~ ~1.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle large_smoke ~ ~1.5 ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 1.5 1
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 1.5 1
playsound entity.lightning_bolt.impact record @a ~ ~ ~ 1.5 1
playsound entity.lightning_bolt.impact record @a ~ ~ ~ 1.5 1

particle ash ~ ~1.5 ~ 1.5 1.5 1.5 0.2 100 force @a[scores={particle=0}]
particle white_ash ~ ~1.5 ~ 1.5 1.5 1.5 0.2 100 force @a[scores={particle=0}]

execute if entity @a[scores={stat.player=1},distance=..4] as @a[scores={stat.player=1},distance=..4] at @s run function zombie:skill/nether/ashes/ash_wizard/death/damage

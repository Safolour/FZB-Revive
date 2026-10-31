#say down
execute as @a[scores={stat.player=2}] at @s run function zombie:skill/nether/guardian/floor/lava/down/1

execute if entity @a[scores={stat.player=2}] run schedule function zombie:skill/nether/guardian/floor/lava/down/0 10t

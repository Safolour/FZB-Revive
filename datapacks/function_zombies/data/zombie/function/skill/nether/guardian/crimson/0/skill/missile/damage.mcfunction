
playsound entity.wither.hurt record @a ~ ~ ~ 2 2
playsound block.end_gateway.spawn record @a ~ ~ ~ 2 2
playsound entity.generic.hurt record @a ~ ~ ~ 2 0

particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[scores={particle=0}]

execute as @a[scores={stat.player=1},distance=..0.5] at @s run function zombie:skill/nether/guardian/crimson/0/skill/missile/damage0

kill @s

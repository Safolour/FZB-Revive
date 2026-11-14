
playsound entity.wither.hurt record @a ~ ~ ~ 2 2
playsound block.end_gateway.spawn record @a ~ ~ ~ 2 2
playsound entity.generic.hurt record @a ~ ~ ~ 2 0

execute unless score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=1}]

execute as @a[scores={stat.player=1},distance=..0.5] at @s run function zombie:skill/nether/guardian/crimson/0/skill/missile/damage0

kill @s

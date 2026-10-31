execute if score range weapon.range matches ..1 run return 0
scoreboard players operation range0 weapon.range = range weapon.range
scoreboard players operation range0 weapon.range %= 2 number
execute unless score range0 weapon.range matches 0 run return 0
particle cherry_leaves ~ ~ ~ 0.08 0.08 0.08 0 1 force @a[scores={particle=0..1}]
particle dust{color:[1.0,0.72,0.77],scale:0.8} ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[scores={particle=0..1}]

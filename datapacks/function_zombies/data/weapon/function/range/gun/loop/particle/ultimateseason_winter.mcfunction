execute if score range weapon.range matches ..1 run return 0
scoreboard players operation range0 weapon.range = range weapon.range
scoreboard players operation range0 weapon.range %= 2 number
execute unless score range0 weapon.range matches 0 run return 0
particle snowflake ~ ~ ~ 0.06 0.06 0.06 0 1 force @a[scores={particle=0..1}]
particle dust{color:[0.85,0.95,1.0],scale:0.7} ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[scores={particle=0..1}]

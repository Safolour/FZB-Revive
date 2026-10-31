
scoreboard players operation range0 weapon.range = range weapon.range
scoreboard players operation range0 weapon.range %= 2 number
execute unless score range0 weapon.range matches 0 run return fail

execute if score range weapon.range matches 1..9 run particle cloud ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0..1}]
execute if score range weapon.range matches 10.. run particle cloud ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0}]
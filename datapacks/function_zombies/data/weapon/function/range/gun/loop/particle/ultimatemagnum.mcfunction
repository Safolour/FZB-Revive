# 弹道从眼前 1 格开始，每 1 格显示烟雾。
scoreboard players operation range0 weapon.range = range weapon.range
scoreboard players operation range0 weapon.range %= 2 number
execute unless score range0 weapon.range matches 0 run return fail
execute if score range weapon.range matches 0 run return fail
execute if score range weapon.range matches 1..9 run particle smoke ~ ~ ~ 0 0 0 0.1 2 force @a[scores={gun.particle=0..1}]
execute if score range weapon.range matches 10.. run particle smoke ~ ~ ~ 0 0 0 0.1 2 force @a[scores={gun.particle=0}]

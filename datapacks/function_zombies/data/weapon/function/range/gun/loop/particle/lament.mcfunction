scoreboard players operation range0 weapon.range = range weapon.range
scoreboard players operation range0 weapon.range %= 2 number
execute unless score range0 weapon.range matches 0 run return fail
# 录像：弹道第一个点在眼前 1.0 格，眼睛处（range=0）不画
execute if score range weapon.range matches 0 run return fail

# 录像：单色 dust #48BFFF（color 4767743）、scale 0.8，每 1.0 格一个点，最远 23.0 格
execute if score range weapon.range matches 1..9 run particle dust{color:[0.282,0.749,1.0],scale:0.8} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if score range weapon.range matches 10.. run particle dust{color:[0.282,0.749,1.0],scale:0.8} ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0}]

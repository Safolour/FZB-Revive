
# 只检测检测点附近的实体（见 detect/hit_near）
function weapon:range/gun/detect/hit_near
execute unless score gun weapon.use matches 10010 unless score gun weapon.use matches 10025 run return fail

scoreboard players set x weapon.state 0
scoreboard players set y weapon.state 0
scoreboard players set z weapon.state 0
execute positioned ~0.5 ~ ~ run function weapon:range/gun/loop/reflection/x0
execute positioned ~-0.5 ~ ~ run function weapon:range/gun/loop/reflection/x1
execute positioned ~ ~0.5 ~ run function weapon:range/gun/loop/reflection/y0
execute positioned ~ ~-0.5 ~ run function weapon:range/gun/loop/reflection/y1
execute positioned ~ ~ ~0.5 run function weapon:range/gun/loop/reflection/z0
execute positioned ~ ~ ~-0.5 run function weapon:range/gun/loop/reflection/z1

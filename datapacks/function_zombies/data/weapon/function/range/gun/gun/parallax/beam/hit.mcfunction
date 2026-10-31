tag @s remove gethit
function weapon:range/gun/detect/hitbox
execute unless entity @s[tag=hit] run return 0
scoreboard players set #parallax_stop weapon.state 1
# 蓝色：照到这一刻就刷新减速。伤害是隔刻才结算，减速不跟着伤害走
execute if score #parallax_mode weapon.state matches 0 run scoreboard players operation @s weapon.gun_parallax_slow = time weapon.gun_parallax_slow
execute if score #parallax_damage weapon.state matches 1 run function weapon:range/gun/gun/parallax/hit
tag @s remove hit
tag @s remove hit1
tag @s remove hit2

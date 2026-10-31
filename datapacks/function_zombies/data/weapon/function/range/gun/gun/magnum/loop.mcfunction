
tp @s ~ ~ ~ facing ^ ^ ^1
scoreboard players set range weapon.range 0
scoreboard players operation max_range weapon.range = range weapon.gun_magnum
scoreboard players operation @s weapon.use = uuid weapon.gun_magnum
# 马格南不穿透：避免继承其他武器的全局穿透计数。
scoreboard players set penetrable weapon.state 0
function weapon:range/gun/loop/0
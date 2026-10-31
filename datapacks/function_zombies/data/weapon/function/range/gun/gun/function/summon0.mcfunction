
# 每发 3 颗弹，每颗从眼睛出发、各自随机偏移（录像：每次开火 3 条射线）
scoreboard players add @s weapon.gun_shot 3
scoreboard players operation #spread_x weapon.state = spread weapon.gun_function
scoreboard players operation #spread_y weapon.state = spread weapon.gun_function
function weapon:range/gun/gun/function/pellet
function weapon:range/gun/gun/function/pellet
function weapon:range/gun/gun/function/pellet

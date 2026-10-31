# 每发 bullet 颗（50% 以后 1~3，之前 1）；整发先按准星偏移偏一次，每颗再按子弹偏移各自偏
scoreboard players operation #bp_n weapon.state = bullet weapon.gun_blueprint
scoreboard players operation @s weapon.gun_shot += #bp_n weapon.state
# 准星偏移：水平 ±offset_x/20 °、竖直 ±offset_y/20 °（0.01° 为单位 = ×5）
scoreboard players operation #spread_x weapon.state = offset_x weapon.gun_blueprint
scoreboard players operation #spread_x weapon.state *= 5 number
scoreboard players operation #spread_y weapon.state = offset_y weapon.gun_blueprint
scoreboard players operation #spread_y weapon.state *= 5 number
scoreboard players set #bp_dx weapon.state 0
scoreboard players set #bp_dy weapon.state 0
execute if score #spread_x weapon.state matches 1.. run function weapon:range/gun/gun/blueprint/offset_x
execute if score #spread_y weapon.state matches 1.. run function weapon:range/gun/gun/blueprint/offset_y
# 子弹偏移：每颗水平 ±spread_x/20 °、竖直 ±spread_y/20 °
scoreboard players operation #spread_x weapon.state = spread_x weapon.gun_blueprint
scoreboard players operation #spread_x weapon.state *= 5 number
scoreboard players operation #spread_y weapon.state = spread_y weapon.gun_blueprint
scoreboard players operation #spread_y weapon.state *= 5 number
function weapon:range/gun/gun/blueprint/pellet

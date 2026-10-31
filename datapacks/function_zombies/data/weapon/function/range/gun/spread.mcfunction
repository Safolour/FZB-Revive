# 子弹 marker 执行（rotated as 射手）：朝向 = 射手朝向 + 随机偏移
#   水平 ±#spread_x、竖直 ±#spread_y（weapon.state，0.01° 为单位），0 就不偏
tp @s ~ ~ ~ facing ^ ^ ^1
execute if score #spread_x weapon.state matches 1.. run function weapon:range/gun/spread_x
execute if score #spread_y weapon.state matches 1.. run function weapon:range/gun/spread_y

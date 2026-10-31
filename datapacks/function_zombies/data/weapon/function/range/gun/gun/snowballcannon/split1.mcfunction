
# 小雪球：随机朝四周、略向上弹出
execute store result entity @s Motion[0] double 0.01 run random value -35..35
execute store result entity @s Motion[1] double 0.01 run random value 25..45
execute store result entity @s Motion[2] double 0.01 run random value -35..35
scoreboard players operation @s weapon.range = small_life weapon.gun_snowballcannon
scoreboard players operation @s weapon.use = uuid weapon.gun_snowballcannon
scoreboard players operation @s weapon.gun_uuid = #owner weapon.state
scoreboard players operation @s weapon.gun_bounce_max = small_bounce_max weapon.gun_snowballcannon
execute if score #magnet weapon.state matches 1 run tag @s add magnet
tag @s remove fzb_small_new

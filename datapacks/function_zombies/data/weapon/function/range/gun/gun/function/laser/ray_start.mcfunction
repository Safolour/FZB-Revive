# 激光射线 marker 执行（rotated as 玩家）
tp @s ~ ~ ~ facing ^ ^ ^1
scoreboard players operation gun weapon.use = uuid weapon.gun_function
scoreboard players set #laser_n weapon.state 0
scoreboard players set #hit_counted weapon.state 0
scoreboard players set #head_counted weapon.state 0
function weapon:range/gun/detect/hit_near_flags
execute at @s run function weapon:range/gun/gun/function/laser/ray
tag @e[tag=laser_done] remove laser_done

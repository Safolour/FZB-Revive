# 复用函数枪的收拢螺旋，中心与起源激光发射点一致。
scoreboard players operation #laser.charge weapon.laser_c = @s origin.tool_age
execute rotated as @s rotated ~ 0 positioned ~ ~1.2 ~ positioned ^ ^ ^0.8 run function weapon:range/gun/gun/function/laser/charge/particles

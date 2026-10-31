# 蓄满：扣充能、恢复跳跃、发射（缓慢不去掉，录像里自然再持续 12 tick）
function weapon:range/gun/gun/function/laser/charge/stop
function weapon:range/gun/gun/function/laser/cap_read
execute unless score @s weapon.function_charge >= @s weapon.laser_threshold run return fail
scoreboard players operation @s weapon.function_charge -= @s weapon.laser_threshold
function weapon:range/gun/gun/function/laser/fire

# 蓄力中的玩家每 tick（weapon:tick 调用，as/at 玩家）
execute if score @s stat.player matches 2..3 run return run function weapon:range/gun/gun/function/laser/charge/cancel
execute unless items entity @s weapon.mainhand *[custom_data~{tag:["function"]}] run return run function weapon:range/gun/gun/function/laser/charge/cancel
execute store result score #slot weapon.laser_slot run data get entity @s SelectedItemSlot
execute unless score #slot weapon.laser_slot = @s weapon.laser_slot run return run function weapon:range/gun/gun/function/laser/charge/cancel
scoreboard players add @s weapon.laser_c 1
# 锁视角：录像每 tick 一个 player_rotation 包，角度一直是按 Q 时的朝向
execute store result storage weapon:function_laser rot.yaw float 0.001 run scoreboard players get @s weapon.laser_yaw
execute store result storage weapon:function_laser rot.pitch float 0.001 run scoreboard players get @s weapon.laser_pitch
function weapon:range/gun/gun/function/laser/charge/rotate with storage weapon:function_laser rot
scoreboard players set @s[scores={system.actionbar=2..}] system.actionbar 2
title @s[scores={system.actionbar=2}] actionbar {translate:"zb.item.gun.function.actionbar.2"}
# 收拢螺旋（眼前 1.25 格 = 光束起点）
scoreboard players operation #laser.charge weapon.laser_c = @s weapon.laser_c
execute anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/particles
execute if score @s weapon.laser_c matches 28.. run function weapon:range/gun/gun/function/laser/charge/release

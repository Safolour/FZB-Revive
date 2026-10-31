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
execute if score @s weapon.laser_c matches 1..2 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring0
execute if score @s weapon.laser_c matches 1..3 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring1
execute if score @s weapon.laser_c matches 1..4 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring2
execute if score @s weapon.laser_c matches 2..5 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring3
execute if score @s weapon.laser_c matches 3..6 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring4
execute if score @s weapon.laser_c matches 4..7 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring5
execute if score @s weapon.laser_c matches 5..8 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring6
execute if score @s weapon.laser_c matches 6..9 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring7
execute if score @s weapon.laser_c matches 7..10 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring8
execute if score @s weapon.laser_c matches 8..11 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring9
execute if score @s weapon.laser_c matches 9..12 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring10
execute if score @s weapon.laser_c matches 10..13 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring11
execute if score @s weapon.laser_c matches 11..14 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring12
execute if score @s weapon.laser_c matches 12..15 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring13
execute if score @s weapon.laser_c matches 13..16 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring14
execute if score @s weapon.laser_c matches 14..17 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring15
execute if score @s weapon.laser_c matches 15..18 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring16
execute if score @s weapon.laser_c matches 16..19 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring17
execute if score @s weapon.laser_c matches 17..20 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring18
execute if score @s weapon.laser_c matches 18..21 anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/charge/ring19
execute if score @s weapon.laser_c matches 28.. run function weapon:range/gun/gun/function/laser/charge/release

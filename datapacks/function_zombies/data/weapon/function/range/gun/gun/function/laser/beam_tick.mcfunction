# 光束 item_display 每 tick（weapon:range/gun/tick1 调用）
# 录像：x/y 粗细前 2 tick 各 +0.3，第 3 tick 不变，之后每 tick −0.15，细到 0.03 以下就删
execute store result score #now weapon.ashes_born run time query gametime
execute if score @s weapon.ashes_born = #now weapon.ashes_born run return fail
scoreboard players add @s weapon.laser_t 1
execute if score @s weapon.laser_t matches ..2 run scoreboard players add @s weapon.laser_s 30
execute if score @s weapon.laser_t matches 4.. run scoreboard players remove @s weapon.laser_s 15
execute if score @s weapon.laser_s matches ..2 run return run kill @s
execute store result entity @s transformation.scale[0] float 0.01 run scoreboard players get @s weapon.laser_s
execute store result entity @s transformation.scale[1] float 0.01 run scoreboard players get @s weapon.laser_s

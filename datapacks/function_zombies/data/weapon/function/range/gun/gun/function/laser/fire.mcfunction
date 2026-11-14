# 玩家执行（at 玩家）：释放毁灭激光（录像 raw/2026_10_11_12_29_09、raw/2026_10_24_17_56_55）
scoreboard players operation @s weapon.use = uuid weapon.gun_function
# 射手标签：激光打中敌人时（laser/hit）据此找到射手，扣他手上这把的上限
tag @s add laser_shooter
playsound entity.warden.sonic_boom record @a ~ ~ ~ 2 1 0
playsound entity.puffer_fish.blow_out record @a ~ ~ ~ 2 1 0
playsound entity.dolphin.death record @a ~ ~ ~ 2 0 0
execute anchored eyes run particle explosion ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0..1}]
execute anchored eyes run particle flash ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0..1}]
# 光束本体：眼前约 1.25 格处 5 层 item_display，往前 100 格
execute anchored eyes positioned ^ ^ ^1.25 run function weapon:range/gun/gun/function/laser/beam
# 伤害和沿线粒子：从同一点出发，每 0.5 格检测一次，碰到方块停
execute anchored eyes positioned ^ ^ ^1.25 run summon marker ~ ~ ~ {Tags:["chosen","function_laser_ray"]}
execute as @e[type=marker,tag=function_laser_ray,limit=1] at @s rotated as @p[scores={weapon.use=1..}] run function weapon:range/gun/gun/function/laser/ray_start
kill @e[type=marker,tag=function_laser_ray]
execute if entity @s[tag=weapon.laser_cap_dirty] run function weapon:range/gun/gun/function/laser/cap_store
tag @s remove laser_shooter
scoreboard players set @s weapon.use 0

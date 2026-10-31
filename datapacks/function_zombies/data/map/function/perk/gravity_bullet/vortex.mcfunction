# 持续 20 tick；固定吸引半径 3 格，视觉半径按法杖漩涡缩小。
scoreboard players remove @s perk.vortex_time 1
rotate @s ~15 ~
scoreboard players operation #r perk = @s perk.vortex_time
scoreboard players operation #r perk *= 3 number
execute store result storage perk vortex.r float 0.05 run scoreboard players get #r perk
scoreboard players remove #r perk 2
execute store result storage perk vortex.r0 float 0.05 run scoreboard players get #r perk
tag @s add perk_vortex_now
execute as @e[tag=mob,tag=hitable,tag=!cantgyro,distance=0.5..3] at @s facing entity @n[type=marker,tag=perk_vortex_now] eyes positioned ^ ^ ^0.25 if block ^ ^ ^1 #weapon:gun_penetrable run tp @s ~ ~ ~
# 复用法杖的飞起方块效果，临时中心标记供其计算运动方向。
summon marker ~ ~ ~ {UUID:[I;1,1,1,1]}
execute if score @s perk.vortex_time matches 1.. run function map:perk/gravity_bullet/vortex0 with storage perk vortex
kill 00000001-0000-0001-0000-000100000001
data remove storage perk vortex
tag @s remove perk_vortex_now
execute if score @s perk.vortex_time matches 19 run playsound entity.enderman.teleport record @a ~ ~ ~ 2 0.5
execute if score @s perk.vortex_time matches 17 run playsound entity.enderman.teleport record @a ~ ~ ~ 2 0.6
execute if score @s perk.vortex_time matches 15 run playsound entity.enderman.teleport record @a ~ ~ ~ 2 0.7
execute if score @s perk.vortex_time matches 13 run playsound entity.enderman.teleport record @a ~ ~ ~ 2 0.8
execute if score @s perk.vortex_time matches 11 run playsound entity.enderman.teleport record @a ~ ~ ~ 2 0.9
execute if score @s perk.vortex_time matches 9 run playsound entity.enderman.teleport record @a ~ ~ ~ 2 1.0
execute if score @s perk.vortex_time matches 7 run playsound entity.enderman.teleport record @a ~ ~ ~ 2 1.1
execute if score @s perk.vortex_time matches 5 run playsound entity.enderman.teleport record @a ~ ~ ~ 2 1.2
execute if score @s perk.vortex_time matches 3 run playsound entity.enderman.teleport record @a ~ ~ ~ 2 1.3
execute if score @s perk.vortex_time matches 1 run playsound entity.enderman.teleport record @a ~ ~ ~ 2 1.4
execute if score @s perk.vortex_time matches ..0 run kill @s

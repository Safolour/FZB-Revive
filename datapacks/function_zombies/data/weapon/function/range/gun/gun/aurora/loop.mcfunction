tp @s ~ ~ ~ facing ^ ^ ^1
tp @s ^ ^ ^1
scoreboard players operation @s weapon.use = uuid weapon.gun_aurora
scoreboard players operation @s weapon.gun_uuid = @p[scores={weapon.use=1..}] uuid
# 基础速度 2 格/tick，加上发射者当时的速度；之后与玩家移动相互独立。
scoreboard players operation @s weapon.aurora_speed = @p[scores={weapon.use=1..}] weapon.aurora_speed
scoreboard players add @s weapon.aurora_speed 2000
scoreboard players set @s weapon.aurora_remainder 0
execute if entity @p[scores={weapon.use=1..,perk.magnetic_bullet=1}] run tag @s add magnet
scoreboard players operation @s weapon.gun_color = color weapon.range
scoreboard players set @s weapon.aurora_dist 2
scoreboard players set @s weapon.range 2048
scoreboard players set @s weapon.aurora_pierce 999999
execute store result score @s weapon.aurora_born run time query gametime
tag @s remove chosen_new
execute at @s run function weapon:range/gun/gun/aurora/proj/tick

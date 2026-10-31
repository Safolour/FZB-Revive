# 弹丸执行（rotated as 射手）：朝向 = 射手朝向 + 随机偏移（lore「子弹偏移：7.5°」，水平、竖直各 ±7.5°）
tag @s remove ashes_new
tp @s ~ ~ ~ facing ^ ^ ^1
execute store result score #ashes_r weapon.state run data get entity @s Rotation[0] 100
execute store result score #ashes_d weapon.state run random value -750..750
scoreboard players operation #ashes_r weapon.state += #ashes_d weapon.state
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #ashes_r weapon.state
execute store result score #ashes_r weapon.state run data get entity @s Rotation[1] 100
execute store result score #ashes_d weapon.state run random value -750..750
scoreboard players operation #ashes_r weapon.state += #ashes_d weapon.state
execute if score #ashes_r weapon.state matches 9001.. run scoreboard players set #ashes_r weapon.state 9000
execute if score #ashes_r weapon.state matches ..-9001 run scoreboard players set #ashes_r weapon.state -9000
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #ashes_r weapon.state

scoreboard players operation @s weapon.range = #ashes_range weapon.state
scoreboard players operation @s weapon.ashes_step = #ashes_speed weapon.state
scoreboard players operation @s weapon.ashes_pierce = #ashes_pierce weapon.state
scoreboard players operation @s weapon.use = #ashes_gun weapon.state
scoreboard players operation @s weapon.gun_uuid = @p[scores={weapon.use=1..}] uuid
execute if entity @p[scores={weapon.use=1..,perk.magnetic_bullet=1}] run tag @s add magnet
scoreboard players add #ashes_next weapon.ashes_id 1
scoreboard players operation @s weapon.ashes_id = #ashes_next weapon.ashes_id
execute store result score @s weapon.ashes_born run time query gametime
# 生成当 tick 就走一次（录像：普通 dt=0 有 1 格处的点；终极 dt=0 有 1、1.5 格两个点）
execute at @s run function weapon:range/gun/gun/ashesflamethrower/proj/tick


execute if score @s weapon.range matches ..0 run return fail
scoreboard players set #hit_counted weapon.state 0
scoreboard players set #head_counted weapon.state 0

scoreboard players operation gun weapon.use = @s weapon.use
function weapon:range/gun/loop/particle
scoreboard players remove @s weapon.range 1
function weapon:range/gun/loop/bounce
scoreboard players set #magnet_steer weapon.state 0
execute if entity @s[tag=magnet,tag=!moving] if function map:perk/magnetic_bullet/projectile run scoreboard players set #magnet_steer weapon.state 1
execute if entity @s[tag=magnet,tag=moving] run function map:perk/magnetic_bullet/steer
# 命中检测沿投射物自身朝向（发射方向）往前查；这一 tick 被磁吸转了向时朝向就不是飞行方向了，
# 检测点偏到一边（矮小的怪碰不到，雪块被拉着在怪身边来回抽），改按 Motion 算方向
execute unless score #magnet_steer weapon.state matches 1 at @s run function weapon:range/gun/loop/1_detect
execute if score #magnet_steer weapon.state matches 1 run function weapon:range/gun/loop/1_detect_motion

execute if entity @s[tag=moving] at @s run tp @s ^ ^ ^1
execute at @s unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s weapon.range 0

tag @s add chosen
execute as @e[tag=!penetrable,tag=gethit,limit=1] run function weapon:range/gun/loop/hit1
tag @s remove chosen
execute unless score @s weapon.range matches ..0 run return fail
execute if score @s weapon.range matches 0 run function weapon:range/gun/loop/explosion
scoreboard players set reflection weapon.range 0
scoreboard players reset @s weapon.range
function system:death

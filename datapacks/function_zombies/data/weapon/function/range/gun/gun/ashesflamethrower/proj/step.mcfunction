# 弹丸走一步（at 弹丸、朝向 = 飞行方向）：先在当前位置画粒子、检测命中，再前进 0.5 格
execute unless block ~ ~ ~ #weapon:gun_penetrable run return run scoreboard players set @s weapon.range 0
# 录像：particle ash ~ ~ ~ 0.05 0.05 0.05 0.1 3 force
particle ash ~ ~ ~ 0.05 0.05 0.05 0.1 3 force @a[scores={particle=0..1}]
execute if entity @s[tag=magnet] run function map:perk/magnetic_bullet/steer
execute at @s run function weapon:range/gun/detect/hit_near
execute as @e[tag=gethit] run function weapon:range/gun/gun/ashesflamethrower/proj/hit
scoreboard players remove @s weapon.range 1
execute if score @s weapon.ashes_pierce matches ..-1 run scoreboard players set @s weapon.range 0
execute if score @s weapon.range matches ..0 run return 0
execute at @s run tp @s ^ ^ ^0.5
scoreboard players remove #ashes_steps weapon.state 1
execute if score #ashes_steps weapon.state matches 1.. at @s run function weapon:range/gun/gun/ashesflamethrower/proj/step

# 每 0.5 格检测一次（穿透无限：路上每个敌人都打一次），每 1 格一个点，碰到方块或走满 100 格停
execute unless block ~ ~ ~ #weapon:gun_penetrable run return 0
scoreboard players add #laser_n weapon.state 1
scoreboard players operation #laser_odd weapon.state = #laser_n weapon.state
scoreboard players operation #laser_odd weapon.state %= 2 number
# 录像：dust_color_transition 黑 → 红，scale 4，每点 5 颗、扩散 0.3
execute if score #laser_odd weapon.state matches 1 run particle dust_color_transition{from_color:[0.0,0.0,0.0],to_color:[1.0,0.0,0.0],scale:4} ~ ~ ~ 0.3 0.3 0.3 0 5 force @a[scores={particle=0..1}]
# 判定：每个射线点向各方向扩展 2 格（±2 的方块），方块里的怪都算被打中（x = 2，可调）
# 注意：选择器 dx=N 的方块实际宽 N+1（正方向多 1 格），所以用 dx=3 才是 [P-2, P+2] 对称的 4 格宽
execute positioned ~-2 ~-2 ~-2 as @e[tag=hitable,scores={zombie.health=1..},dx=3,dy=3,dz=3] run tag @s add gethit
execute as @e[tag=gethit] run function weapon:range/gun/gun/function/laser/hit
execute if score #laser_n weapon.state matches 200.. run return 0
tp @s ^ ^ ^0.5
execute at @s run function weapon:range/gun/gun/function/laser/ray

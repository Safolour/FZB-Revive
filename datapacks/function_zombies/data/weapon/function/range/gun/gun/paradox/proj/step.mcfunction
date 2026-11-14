execute if score @s weapon.pd_dist matches 30.. run return 0
execute unless block ~ ~ ~ #weapon:gun_penetrable run return run scoreboard players set @s weapon.pd_dist 30
function weapon:range/gun/gun/paradox/proj/particles
# Sweep both halves of each 0.8-block advance rather than skipping narrow targets.
scoreboard players set #hit_near_skip weapon.state 0
function weapon:range/gun/detect/hit_near
execute as @e[tag=gethit] run function weapon:range/gun/gun/paradox/proj/hit
execute positioned ^ ^ ^0.4 run function weapon:range/gun/gun/paradox/proj/half
function weapon:range/gun/gun/paradox/proj/steer
execute at @s run tp @s ^ ^ ^0.8
scoreboard players add @s weapon.pd_dist 1
scoreboard players remove @s weapon.pd_steps 1
execute if score @s weapon.pd_steps matches 1.. at @s run function weapon:range/gun/gun/paradox/proj/step

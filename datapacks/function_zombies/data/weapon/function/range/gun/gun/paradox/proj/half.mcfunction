execute unless block ~ ~ ~ #weapon:gun_penetrable run return run scoreboard players set @s weapon.pd_dist 30
scoreboard players set #hit_near_skip weapon.state 0
function weapon:range/gun/detect/hit_near
execute as @e[tag=gethit] run function weapon:range/gun/gun/paradox/proj/hit

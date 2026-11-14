execute unless block ~ ~ ~ #weapon:gun_penetrable run return 0
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=mob,tag=hitable,scores={zombie.health=1..},type=!player,dx=0,dy=0,dz=0,sort=nearest,limit=1] run function weapon:range/gun/gun/paradox/proj/lock_target
execute if score #target_found weapon.pd_hit matches 1 run return 1
scoreboard players remove #lock_steps weapon.pd_hit 1
execute if score #lock_steps weapon.pd_hit matches 1.. positioned ^ ^ ^0.5 run function weapon:range/gun/gun/paradox/proj/lock_ray

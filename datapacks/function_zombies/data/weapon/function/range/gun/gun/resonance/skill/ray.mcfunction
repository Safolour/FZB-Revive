execute unless loaded ~ ~ ~ run return 0
execute unless block ~ ~ ~ #weapon:gun_penetrable run return 0
particle dust_color_transition{from_color:255,to_color:65535,scale:2} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
# Established exact hitbox probe, without limiting the number of linked mobs.
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=hitable,tag=!res_skill_seen,scores={zombie.health=1..},dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 run function weapon:range/gun/gun/resonance/skill/hit
scoreboard players add #res_steps weapon.state 1
execute if score #res_steps weapon.state matches 60.. run return 0
execute at @s run tp @s ^ ^ ^0.5
execute at @s run function weapon:range/gun/gun/resonance/skill/ray

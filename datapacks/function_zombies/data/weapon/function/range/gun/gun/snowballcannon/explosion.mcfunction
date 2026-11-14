# 小雪球寿命到/弹够次数：直接消失
execute if entity @s[tag=small] run return run particle snowflake ~ ~ ~ 0.1 0.1 0.1 0.02 5 normal @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
tag @s add chosen
execute as @s at @s as @e[tag=hitable,scores={zombie.health=1..},distance=..3,limit=5,tag=!chosen] at @s run function weapon:range/gun/gun/snowballcannon/damage_2
tag @s remove chosen
particle explosion ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0..1}]
function weapon:range/gun/gun/snowballcannon/split

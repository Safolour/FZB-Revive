execute if entity @n[tag=chosen,tag=projectile,tag=small] run return run function weapon:range/gun/gun/snowballcannon/hit_small
# 雪块直接打中怪：在雪块位置爆炸分裂（只擦过不算）
execute if entity @s[tag=hit] as @n[tag=chosen,tag=projectile] at @s run function weapon:range/gun/gun/snowballcannon/split
tag @s add chosen
execute as @s at @s as @e[tag=hitable,scores={zombie.health=1..},distance=..3,limit=5,tag=!chosen] at @s run function weapon:range/gun/gun/snowballcannon/damage_2
tag @s remove chosen
particle explosion ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0..1}]
execute if entity @s[tag=hit,tag=hit1] run function weapon:range/gun/gun/snowballcannon/damage_1
execute if entity @s[tag=hit,tag=hit2] run function weapon:range/gun/gun/snowballcannon/damage_2

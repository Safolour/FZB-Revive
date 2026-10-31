# 不使用 Motion 的弹体：瞄准 3 格内可命中的怪物，保留原本逐步飞行速度。
execute unless entity @e[tag=hitable,type=!player,type=!marker,distance=..3,scores={zombie.health=1..}] run return fail
execute as @e[tag=hitable,type=!player,type=!marker,distance=..3,scores={zombie.health=1..},sort=nearest,limit=1] at @s run function map:perk/magnetic_bullet/aim
execute facing entity @n[type=marker,tag=perk_magnet_aim] feet run tp @s ~ ~ ~ ~ ~
kill @e[type=marker,tag=perk_magnet_aim]
scoreboard players set #hit_near_skip weapon.state 0
return 1

# Excel：额外对命中目标极小范围（1.5 格）内的 2 名敌人造成伤害
tag @s add chosen
execute at @s as @e[type=!player,tag=hitable,scores={zombie.health=1..},distance=..1.5,limit=2,sort=nearest,tag=!chosen] run function weapon:range/gun/gun/magnum/damage_2
tag @s remove chosen

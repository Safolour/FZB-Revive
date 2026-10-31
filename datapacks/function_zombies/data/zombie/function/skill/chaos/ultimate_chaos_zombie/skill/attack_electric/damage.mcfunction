#execute at @s as @a[scores={stat.player=1},distance=..2] run damage @s 3
#data modify storage revive root.down.target0 set value ultimatechaoszombie

execute store result storage zombie skill.damage double 0.1 run scoreboard players get chaos.ultimatechaoszombie.attack_electric zombie.skill.damage
execute at @s as @a[scores={stat.player=1},distance=..2] run function zombie:skill/chaos/ultimate_chaos_zombie/skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.ultimatechaoszombie,color:red}]

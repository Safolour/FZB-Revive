execute as @a[tag=skill.ultimatechaoszombie.teleport.damage] run damage @s 5

execute as @a[tag=skill.ultimatechaoszombie.teleport.damage] at @s run particle flash


execute store result storage zombie skill.damage double 0.1 run scoreboard players get chaos.ultimatechaoszombie.teleport zombie.skill.damage
execute as @a[tag=skill.ultimatechaoszombie.teleport.damage] run function zombie:skill/chaos/ultimate_chaos_zombie/skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.ultimatechaoszombie,color:red}]


tag @a[tag=skill.ultimatechaoszombie.teleport.damage] remove skill.ultimatechaoszombie.teleport.damage

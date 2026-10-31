summon marker ~ ~ ~ {Tags:["mob.skill","skill.ultimatechaoszombie.laser_position0","chosen","skill.ultimatechaoszombie.laser_position"]}
execute as @s at @s run tp @n[type=marker,tag=chosen] ~ ~ ~ ~ 0
execute as @e[type=marker,tag=skill.ultimatechaoszombie.laser_position0,tag=chosen] at @s run tp @s ^ ^ ^-0.08

execute as @e[type=marker,tag=chosen] at @s run summon marker ^ ^ ^-1 {Tags:["mob.skill","skill.ultimatechaoszombie.laser_position1","chosen","skill.ultimatechaoszombie.laser_position"]}
execute as @e[type=marker,tag=chosen,tag=skill.ultimatechaoszombie.laser_position1] unless block ~ ~ ~ #weapon:gun_penetrable run tag @s add skill.ultimatechaoszombie.laser_position.fail

execute unless entity @e[type=marker,tag=chosen,tag=skill.ultimatechaoszombie.laser_position.fail] run tp @s @n[type=marker,tag=chosen,tag=skill.ultimatechaoszombie.laser_position0]

kill @e[type=marker,tag=chosen]

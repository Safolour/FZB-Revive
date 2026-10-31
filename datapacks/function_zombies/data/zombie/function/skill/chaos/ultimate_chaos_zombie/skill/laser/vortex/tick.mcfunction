scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_timer 1

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 30.. run kill @s

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches ..30 run particle enchanted_hit ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0}]
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches ..30 run particle bubble_pop ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0}]
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches ..30 run particle electric_spark ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0}]

execute if score @s[type=marker,tag=skill.ultimatechaoszombie.laser.vortex1] zombie.chaos.ultimate_chaos_zombie.skill_timer matches 25 run particle sonic_boom ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0..1}]

scoreboard players operation match zombie.chaos.ultimate_chaos_zombie.skill_laservortexparticle = @s zombie.chaos.ultimate_chaos_zombie.skill_laservortexparticle

execute as @e[type=marker,tag=skill.ultimatechaoszombie.laser.vortex,tag=!target] if score @s zombie.chaos.ultimate_chaos_zombie.skill_laservortexparticle = match zombie.chaos.ultimate_chaos_zombie.skill_laservortexparticle run tag @s add target

execute if entity @s[type=marker,tag=skill.ultimatechaoszombie.laser.vortex1] run tp @s ^ ^ ^0.07 facing entity @n[type=marker,tag=skill.ultimatechaoszombie.laser.vortex4,tag=target]
execute if entity @s[type=marker,tag=skill.ultimatechaoszombie.laser.vortex2] run tp @s ^ ^ ^0.07 facing entity @n[type=marker,tag=skill.ultimatechaoszombie.laser.vortex1,tag=target]
execute if entity @s[type=marker,tag=skill.ultimatechaoszombie.laser.vortex3] run tp @s ^ ^ ^0.07 facing entity @n[type=marker,tag=skill.ultimatechaoszombie.laser.vortex2,tag=target]
execute if entity @s[type=marker,tag=skill.ultimatechaoszombie.laser.vortex4] run tp @s ^ ^ ^0.07 facing entity @n[type=marker,tag=skill.ultimatechaoszombie.laser.vortex3,tag=target]

tag @e[type=marker,tag=target] remove target
scoreboard players reset match zombie.chaos.ultimate_chaos_zombie.skill_laservortexparticle

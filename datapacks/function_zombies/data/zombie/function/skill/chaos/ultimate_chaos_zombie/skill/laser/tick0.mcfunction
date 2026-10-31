execute if entity @s[type=marker,tag=skill.ultimatechaoszombie.laser.vortex] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/vortex/tick
execute if entity @s[type=marker,tag=skill.ultimatechaoszombie.laser.beam] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/beam/tick

execute if entity @s[type=marker,tag=skill.ultimatechaoszombie.laser.beam.0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/beam/particle/tick

execute if entity @s[scores={zombie.uuid0=0}] run kill @s
scoreboard players set @s zombie.uuid0 0
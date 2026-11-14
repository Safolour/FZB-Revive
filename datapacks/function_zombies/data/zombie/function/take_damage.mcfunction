
execute if entity @s[tag=skill.origin] at @s run function zombie:skill/creation/origin/lightning/lock_health
execute if entity @s[tag=skill.titan,tag=titan.eclipse.cast] run return run function zombie:skill/creation/titan/lock_health
execute if entity @s[tag=skill.origin,tag=origin.transition] run return 0
execute if entity @s[nbt={HurtTime:10s}] run tag @s add pass
execute unless score @s zombie.health0 = @s zombie.health run tag @s add pass
execute if entity @s[tag=skill.firelord,tag=!skill.firelord.shield.used,scores={zombie.health=..0}] run scoreboard players set @s zombie.health 33333
execute if entity @s[tag=skill.firelord,tag=firelord.p3,tag=!firelord.p4,scores={zombie.health=..0}] run scoreboard players set @s zombie.health 16666
execute unless entity @s[scores={zombie.health=1..}] run return run tag @s remove pass
execute unless entity @s[tag=pass] run return fail
tag @s remove pass
execute unless score @s zombie.health0 = @s zombie.health run function zombie:take_damage0
execute store result score @s zombie.health1 run data get entity @s Health 10
scoreboard players operation @s zombie.health1 -= 10240 number
scoreboard players operation @s zombie.health += @s zombie.health1
execute if entity @s[tag=skill.firelord,tag=!skill.firelord.shield.used,scores={zombie.health=..33333}] at @s run function zombie:take_damage0
execute if entity @s[tag=skill.firelord,tag=firelord.p3,tag=!firelord.p4,scores={zombie.health=..16666}] at @s run function zombie:take_damage0
execute if entity @s[tag=skill.origin,tag=origin.ready,tag=!origin.p2,tag=!origin.transition,tag=!origin.large75,scores={zombie.health=..112500}] at @s run function zombie:take_damage0
execute if entity @s[tag=skill.origin,tag=origin.ready,tag=origin.large75,tag=!origin.transition,tag=!origin.large25,scores={zombie.health=..37500}] at @s run function zombie:take_damage0
execute if entity @s[tag=skill.origin,tag=origin.ready,tag=origin.large75,tag=!origin.large25,tag=!origin.transition,scores={origin.big=1,origin.cast=1..,zombie.health=..112500}] at @s run function zombie:take_damage0
execute if entity @s[tag=skill.origin,tag=origin.ready,tag=origin.large25,tag=!origin.transition,scores={origin.big=1,origin.cast=1..,zombie.health=..37500}] at @s run function zombie:take_damage0
scoreboard players reset @s zombie.health1
data modify entity @s Health set value 1024

execute if entity @s[tag=skill.origin,tag=!origin.p2,tag=!origin.p3,tag=!origin.transition,scores={zombie.health=..75000}] at @s run function zombie:skill/creation/origin/phase
execute if entity @s[tag=bossbar] run function zombie:bossbar/if_health

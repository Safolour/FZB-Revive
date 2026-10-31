
execute if block ~ ~ ~ #weapon:gun_penetrable run return fail
execute if score @s zombie.nether.guardian.laser.reflection matches 1.. run scoreboard players remove @s zombie.nether.guardian.laser.reflection 1
execute store result score rotation0 zombie.nether.guardian.laser.reflection run data get entity @s Rotation[0] -10000
execute if score rotation0 zombie.nether.guardian.laser.reflection matches 0.. run tag @s add remove
execute unless score rotation0 zombie.nether.guardian.laser.reflection matches 0.. run tag @s add add
execute if entity @s[tag=remove] run scoreboard players operation rotation0 zombie.nether.guardian.laser.reflection -= 1800000 number
execute if entity @s[tag=add] run scoreboard players operation rotation0 zombie.nether.guardian.laser.reflection += 1800000 number
tag @s remove remove
tag @s remove add
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get rotation0 zombie.nether.guardian.laser.reflection


particle flash ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=0}]

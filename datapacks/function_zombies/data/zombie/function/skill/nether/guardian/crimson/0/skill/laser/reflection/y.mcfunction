
execute if block ~ ~ ~ #weapon:gun_penetrable run return fail
execute store result entity @s Rotation[1] float 1 run data get entity @s Rotation[1] -1
execute if score @s zombie.nether.guardian.laser.reflection matches 1.. run scoreboard players remove @s zombie.nether.guardian.laser.reflection 1

particle flash ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=0}]


execute if block ~ ~ ~ #weapon:gun_penetrable run return fail
execute store result entity @s Rotation[0] float 1 run data get entity @s Rotation[0] -1
execute if score @s zombie.nether.guardian.laser.reflection matches 1.. run scoreboard players remove @s zombie.nether.guardian.laser.reflection 1

execute unless score round game.state matches 40 run particle flash ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=1}]

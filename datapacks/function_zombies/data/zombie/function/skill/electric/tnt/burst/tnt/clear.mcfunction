scoreboard players operation match zombie.number = @s zombie.electric.bomber.burst.tntmatch

execute as @e[type=armor_stand] if score @s zombie.electric.bomber.burst.tntmatch = match zombie.number run tag @s add target

kill @e[type=armor_stand,tag=target]
tp @s 0 0 0
kill @s

scoreboard players reset match zombie.number

particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
playsound block.grass.break record @a ~ ~ ~ 1 2

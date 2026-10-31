scoreboard players operation match zombie.number = @s zombie.chaos.ultimate_chaos_zombie.skill_tntmatch

execute as @e[type=armor_stand] if score @s zombie.chaos.ultimate_chaos_zombie.skill_tntmatch = match zombie.number run tag @s add target

kill @e[type=armor_stand,tag=target]
tp @s 0 0 0
kill @s

scoreboard players reset match zombie.number

particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
playsound block.grass.break record @a ~ ~ ~ 1 2

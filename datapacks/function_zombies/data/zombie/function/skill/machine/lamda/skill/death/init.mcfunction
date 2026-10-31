#say death
#scoreboard players set @s zombie.health 1
tag @s remove hitable

scoreboard players operation match zombie.number = @s zombie.lamda.match

execute as @e[type=zombie,tag=skill.lamda] if score @s zombie.lamda.match = match zombie.number run tag @s add target

execute as @e[type=zombie,tag=target] run function zombie:skill/machine/lamda/skill/death/init0


scoreboard players reset match zombie.number
tag @e[type=zombie] remove target

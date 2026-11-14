kill @e[type=marker,tag=origin.destination]
tag @s remove origin.arrive
execute store result score @s zombie.skill_timer run random value 36..66

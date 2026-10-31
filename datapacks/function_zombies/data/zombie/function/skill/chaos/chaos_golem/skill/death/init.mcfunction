#say death
tag @s remove hitable
scoreboard players operation match zombie.number = @s zombie.chaos.chaos_golem.match

execute as @e[type=zombie,tag=skill.chaosgolem] if score @s zombie.chaos.chaos_golem.match = match zombie.number run tag @s add target

execute as @e[type=zombie,tag=target] run function zombie:skill/chaos/chaos_golem/skill/death/init0


scoreboard players reset match zombie.number
tag @e[type=zombie] remove target

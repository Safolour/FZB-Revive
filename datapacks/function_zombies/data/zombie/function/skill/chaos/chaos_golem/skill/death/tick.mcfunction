scoreboard players add @s zombie.chaos.chaos_golem.skill_timer 1

execute if score @s zombie.chaos.chaos_golem.skill_timer matches 1 run function zombie:skill/chaos/chaos_golem/skill/death/animation
execute if score @s zombie.chaos.chaos_golem.skill_timer matches 1 run scoreboard players set @s zombie.health 1

execute if score @s zombie.chaos.chaos_golem.skill_timer matches 42 run function zombie:skill/chaos/chaos_golem/skill/death/clear

execute if score @s zombie.chaos.chaos_golem.skill_timer matches 42 run function system:death

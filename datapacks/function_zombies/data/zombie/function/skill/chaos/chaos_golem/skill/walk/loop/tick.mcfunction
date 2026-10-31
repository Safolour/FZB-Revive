scoreboard players add @s zombie.chaos.chaos_golem.skill_timer 1

execute if score @s zombie.chaos.chaos_golem.skill_timer matches 20 run playsound entity.iron_golem.step record @a ~ ~ ~ 2 1
execute if score @s zombie.chaos.chaos_golem.skill_timer matches 40 run playsound entity.iron_golem.step record @a ~ ~ ~ 2 1

execute if score @s zombie.chaos.chaos_golem.skill_timer matches 40 run function zombie:skill/chaos/chaos_golem/skill/walk/loop/end

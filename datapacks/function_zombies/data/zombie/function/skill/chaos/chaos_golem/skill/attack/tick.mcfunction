scoreboard players add @s zombie.chaos.chaos_golem.skill_timer 1

execute if score @s zombie.chaos.chaos_golem.skill_timer matches 20 run function zombie:skill/chaos/chaos_golem/skill/attack/0
execute if score @s zombie.chaos.chaos_golem.skill_timer matches 25 run function zombie:skill/chaos/chaos_golem/skill/attack/0

execute if score @s zombie.chaos.chaos_golem.skill_timer matches 17 run playsound item.trident.throw record @a ~ ~ ~ 2 0

execute if score @s zombie.chaos.chaos_golem.skill_timer matches 40 run function zombie:skill/chaos/chaos_golem/skill/attack/end

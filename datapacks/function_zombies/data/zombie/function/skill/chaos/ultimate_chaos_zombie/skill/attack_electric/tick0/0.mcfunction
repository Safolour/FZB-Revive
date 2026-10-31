execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 5 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/lightning
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 10 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/lightning
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 15 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/lightning

scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_timer 1

execute unless score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 16.. run return fail
kill @s
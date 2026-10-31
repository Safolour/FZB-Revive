execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 4 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/lightning
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 6 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/lightning
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 11 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/lightning
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 13 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/lightning
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 18 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/lightning
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 20 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/lightning
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 25 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/lightning
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 27 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/lightning
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 32 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/lightning
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 34 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/lightning

scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_timer 1

execute unless score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 35.. run return fail
kill @s

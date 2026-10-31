scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_timer 1

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 1 run effect give @s glowing infinite 0 true
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 1 run team join zombie.chaos.ultimate_chaos_zombie.1
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 3 run team join zombie.chaos.ultimate_chaos_zombie.2
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 5 run team join zombie.chaos.ultimate_chaos_zombie.1
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 7 run team join mob @s
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 7 run effect clear @s glowing


execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 2 run particle enchanted_hit ~ ~ ~ 1 1 1 0 50 force @a[scores={particle=0}]
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 4 run particle enchanted_hit ~ ~ ~ 1 1 1 0 50 force @a[scores={particle=0}]

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 1 run data merge entity @s {NoAI:1b}
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 8 run data merge entity @s {NoAI:0b}

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 35 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/end

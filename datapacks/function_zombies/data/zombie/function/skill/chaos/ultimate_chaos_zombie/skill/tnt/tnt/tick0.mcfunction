scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_timer 1

tp @s ~ ~ ~ ~10 ~

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 2 run team join zombie.chaos.ultimate_chaos_zombie.2
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 9 run team join zombie.chaos.ultimate_chaos_zombie.3
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 15 run team join zombie.chaos.ultimate_chaos_zombie.2
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 20 run team join zombie.chaos.ultimate_chaos_zombie.3
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 24 run team join zombie.chaos.ultimate_chaos_zombie.2
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 27 run team join zombie.chaos.ultimate_chaos_zombie.3
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 29 run team join zombie.chaos.ultimate_chaos_zombie.2
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 30 run team join zombie.chaos.ultimate_chaos_zombie.3

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 31.. run kill @s

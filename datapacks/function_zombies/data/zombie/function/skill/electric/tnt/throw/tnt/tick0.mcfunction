scoreboard players add @s zombie.electric.bomber.throw.skill_timer 1

tp @s ~ ~ ~ ~10 ~

execute if score @s zombie.electric.bomber.throw.skill_timer matches 5 run team join zombie.chaos.ultimate_chaos_zombie.2
execute if score @s zombie.electric.bomber.throw.skill_timer matches 10 run team join zombie.chaos.ultimate_chaos_zombie.3
execute if score @s zombie.electric.bomber.throw.skill_timer matches 14 run team join zombie.chaos.ultimate_chaos_zombie.2
execute if score @s zombie.electric.bomber.throw.skill_timer matches 17 run team join zombie.chaos.ultimate_chaos_zombie.3
execute if score @s zombie.electric.bomber.throw.skill_timer matches 19 run team join zombie.chaos.ultimate_chaos_zombie.2
execute if score @s zombie.electric.bomber.throw.skill_timer matches 20 run team join zombie.chaos.ultimate_chaos_zombie.3

execute if score @s zombie.electric.bomber.throw.skill_timer matches 21.. run kill @s

scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_timer 1


execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 1 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/player
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 1 as @a[tag=target] at @s run tp @s ~ ~1 ~ ~ ~17
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 1 run tag @a remove target

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 4 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/player
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 4 as @a[tag=target] at @s run tp @s ~ ~ ~ ~-20 ~-17
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 4 run tag @a remove target

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 7 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/player
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 7 as @a[tag=target] at @s run tp @s ~ ~ ~ ~20 ~
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 7 run tag @a remove target

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 10 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/player
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 10 as @a[tag=target] at @s run tp @s ~ ~ ~ ~-10 ~17
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 10 run tag @a remove target

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 13 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/player
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 13 as @a[tag=target] at @s run tp @s ~ ~ ~ ~30 ~17
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 13 run tag @a remove target

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 16 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/player
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 16 as @a[tag=target] at @s run tp @s ~ ~ ~ ~-20 ~17
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 16 run tag @a remove target

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 19 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/player
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 19 as @a[tag=target] at @s run tp @s ~ ~ ~ ~10 ~-17
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 19 run tag @a remove target

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 22 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/player
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 22 as @a[tag=target] at @s run tp @s ~ ~ ~ ~-10 ~20
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 22 run tag @a remove target

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 25 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/player
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 25 as @a[tag=target] at @s run tp @s ~ ~ ~ ~20 ~-17
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 25 run tag @a remove target

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 28 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/player
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 29 as @a[tag=target] at @s run tp @s ~ ~ ~ ~-20 ~
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 28 run tag @a remove target

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 31 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/player
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 31 as @a[tag=target] at @s run tp @s ~ ~ ~ ~30 ~17
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 31 run tag @a remove target



execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 40 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/player

#execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 40 as @a[tag=target] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/0

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 40 as @a[tag=target] at @s run summon lightning_bolt
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 40 as @a[tag=target] at @s run summon lightning_bolt
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 40 as @a[tag=target] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/damage_end
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 40 as @a[tag=target] at @s run particle explosion ~ ~ ~ 0 0 0 1 3 force @a[scores={particle=0}]
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 40 run tag @a remove target

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 40.. run kill @s
 
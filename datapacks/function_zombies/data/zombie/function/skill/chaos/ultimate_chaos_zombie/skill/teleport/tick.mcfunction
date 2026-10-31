scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_timer 1

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 2 run team join zombie.chaos.ultimate_chaos_zombie.2
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 2 run particle flash ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0}]
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 2 run playsound minecraft:entity.player.hurt_on_fire record @a ~ ~ ~ 1 1
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 2 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/particle/init with entity @s data.teleport.position

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 3 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/tp with entity @s data.teleport.position

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 4 run playsound minecraft:entity.player.hurt_on_fire record @a ~ ~ ~ 1 1
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 4 at @s run particle flash ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0}]

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 5 run team join zombie.chaos.ultimate_chaos_zombie.1
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 6 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/end

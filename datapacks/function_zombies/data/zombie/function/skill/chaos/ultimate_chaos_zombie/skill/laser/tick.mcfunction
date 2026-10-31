
scoreboard players operation uuid zombie.uuid = @s zombie.uuid
execute as @e[type=marker,tag=skill.ultimatechaoszombie.laser] if score @s zombie.uuid = uuid zombie.uuid run scoreboard players set @s zombie.uuid0 2

scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_timer 1

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 3 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 6 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 9 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 12 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 15 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 18 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 21 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 35 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 39 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 43 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 47 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 51 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 55 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 59 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 63 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 67 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 71 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 75 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 1 run effect give @s glowing infinite 0 true
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 3 run team join zombie.chaos.ultimate_chaos_zombie.3
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 30 run team join mob
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 30 run effect clear @s glowing

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 35 run playsound entity.wither.spawn record @a ~ ~ ~ 1 0
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 35 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 1 1
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 35 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 1 1

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 35 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/beam/init

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 112 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/end

kill @e[type=marker,tag=skill.ultimatechaoszombie.teleport.position.end]

scoreboard players reset @s zombie.chaos.ultimate_chaos_zombie.skill_timer
scoreboard players set @s zombie.chaos.ultimate_chaos_zombie.skill_cooldowntimer 20

data merge entity @s {NoAI:0b}

tag @s remove skill.ultimatechaoszombie.teleport

effect clear @s glowing
team join mob @s

tag @s remove skill.ultimatechaoszombie.casting

execute if entity @s[tag=skill.ultimatechaoszombie.casting] run return 0


execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_cooldowntimer matches 1.. run scoreboard players remove @s zombie.chaos.ultimate_chaos_zombie.skill_cooldowntimer 1

scoreboard players operation max_health zombie.number = @s zombie.max_health
scoreboard players operation health zombie.number = @s zombie.health

scoreboard players set 100 zombie.number 100
scoreboard players operation health zombie.number *= 100 zombie.number

scoreboard players operation health zombie.number /= max_health zombie.number
scoreboard players operation @s zombie.chaos.ultimate_chaos_zombie.healthpercent = health zombie.number

scoreboard players reset max_health zombie.number
scoreboard players reset health zombie.number
scoreboard players reset 100 zombie.number

execute if score @s[tag=skill.ultimatechaoszombie.healthpercentskill.laser,tag=!skill.ultimatechaoszombie.casting] zombie.chaos.ultimate_chaos_zombie.skill_cooldowntimer matches 0 if score @s zombie.chaos.ultimate_chaos_zombie.healthpercent matches ..75 run function zombie:skill/chaos/ultimate_chaos_zombie/plan/75
execute if score @s[tag=skill.ultimatechaoszombie.healthpercentskill.lightning,tag=!skill.ultimatechaoszombie.casting] zombie.chaos.ultimate_chaos_zombie.skill_cooldowntimer matches 0 if score @s zombie.chaos.ultimate_chaos_zombie.healthpercent matches ..50 run function zombie:skill/chaos/ultimate_chaos_zombie/plan/50

execute if score @s[tag=!skill.ultimatechaoszombie.casting] zombie.chaos.ultimate_chaos_zombie.skill_cooldowntimer matches 0 if score @s zombie.chaos.ultimate_chaos_zombie.healthpercent matches 50.. run function zombie:skill/chaos/ultimate_chaos_zombie/plan/0
execute if score @s[tag=!skill.ultimatechaoszombie.casting] zombie.chaos.ultimate_chaos_zombie.skill_cooldowntimer matches 0 if score @s zombie.chaos.ultimate_chaos_zombie.healthpercent matches ..49 run function zombie:skill/chaos/ultimate_chaos_zombie/plan/1

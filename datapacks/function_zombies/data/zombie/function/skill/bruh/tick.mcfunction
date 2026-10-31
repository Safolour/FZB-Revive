
execute if entity @s[scores={path.tp_binding=1}] run return fail

execute store result score random zombie.skill_timer run random value 1..3
scoreboard players operation @s zombie.skill_timer += random zombie.skill_timer

effect give @s[scores={zombie.skill_timer=190..}] speed 1 2 true
scoreboard players set @s[scores={zombie.skill_timer=190}] zombie.motiony1 2500
execute unless entity @s[scores={zombie.skill_timer=200..}] run return fail
effect give @s slow_falling 2 0 true
scoreboard players set @s zombie.skill_timer 0
scoreboard players set @s zombie.motiony1 7500
#function zombie:zombie/bruh/projectile0

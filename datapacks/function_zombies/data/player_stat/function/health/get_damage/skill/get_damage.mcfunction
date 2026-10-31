

scoreboard players operation @s health.damage_skill > damage health.damage_skill
scoreboard players set damage health.damage_skill 0

execute store result score @s health.damage_skill_cooldown run data get entity @s HurtTime
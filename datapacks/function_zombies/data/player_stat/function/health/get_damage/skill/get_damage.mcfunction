

execute if score damage health.damage_skill > @s health.damage_skill run tag @s remove r40.source.circle
execute if score damage health.damage_skill > @s health.damage_skill run tag @s remove r40.source.ghastfire
execute if score damage health.damage_skill > @s health.damage_skill run tag @s remove r40.source.tnt
execute if score damage health.damage_skill > @s health.damage_skill run function player_stat:health/get_damage/skill/r70_clear_source
scoreboard players operation @s health.damage_skill > damage health.damage_skill
scoreboard players set damage health.damage_skill 0

execute store result score @s health.damage_skill_cooldown run data get entity @s HurtTime
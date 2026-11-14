
execute store result score @s health.health run data get entity @s Health 10
scoreboard players remove @s[scores={health.damage_skill_cooldown=1..}] health.damage_skill_cooldown 1
execute if entity @s[scores={health.damage_resisted=1..,stat.player=1}] run function player_stat:health/get_damage/default/damage
execute if entity @s[scores={health.damage_skill=1..,stat.player=1,health.damage_skill_cooldown=0}] run function player_stat:health/get_damage/skill/r70_dispatch


scoreboard players remove @s[scores={health.invincible_timer=0..}] health.invincible_timer 1
scoreboard players set @s[scores={health.damage_resisted=1..}] health.damage_resisted 0

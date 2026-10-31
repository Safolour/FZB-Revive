
scoreboard players add @s stat.max_health 4
scoreboard players remove @s perk.extra_health_lv 1
execute if score @s perk.extra_health_lv matches 1.. run function map:perk/extra_health0


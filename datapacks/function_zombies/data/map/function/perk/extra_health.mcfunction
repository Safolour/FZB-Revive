
scoreboard players operation @s stat.max_health = default perk.extra_health
execute unless items entity @s container.* *[custom_data~{tag:["extra_health"]}] run return fail
execute store result score @s perk.extra_health_lv run data get entity @s Inventory[{components:{"minecraft:custom_data":{tag:["extra_health"]}}}].components."minecraft:custom_data".lv
function map:perk/extra_health0
#盔甲
function player_stat:health/get_damage/default/operation0

#小刀
scoreboard players set block health.operation 0
execute if score @s weapon.melee.block matches 1 if items entity @s weapon *[custom_data~{tag:["block"]}] if data entity @s SelectedItem.components."minecraft:custom_data".block store result score block health.operation run data get entity @s SelectedItem.components."minecraft:custom_data".block
scoreboard players operation block health.operation -= 100 number
scoreboard players operation block health.operation *= -1 number
scoreboard players operation damage health.operation *= block health.operation
scoreboard players operation damage health.operation /= 100 number

scoreboard players set damageresisted_extra health.operation 100
scoreboard players operation damageresisted_extra health.operation -= @s stat.damageresisted_extra
execute if score @s perk.absorption_resist matches 1.. run scoreboard players operation damageresisted_extra health.operation -= @s perk.absorption_resist
scoreboard players operation damage health.operation *= damageresisted_extra health.operation
scoreboard players operation damage health.operation /= 100 number

#总伤害
scoreboard players operation damage0 health.operation = damage health.operation
#scoreboard players operation damage health.operation += d health.operation

scoreboard players reset d health.operation
scoreboard players reset @s health.damage_resisted
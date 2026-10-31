
execute unless items entity @s container.* *[custom_data~{tag:["extra_health"]}] run function map:debug/menu/trigger/get_perk {perk:extra_health}
execute unless items entity @s container.* *[custom_data~{tag:["extra_health"]}] run return fail
execute store result score #lv perk run data get entity @s Inventory[{components:{"minecraft:custom_data":{tag:["extra_health"]}}}].components."minecraft:custom_data".lv
execute if score #lv perk >= #want perk run return fail
# 升级没生效（例如已经满级）就停，免得死循环
execute if score #lv perk = #prev perk run return fail
scoreboard players operation #prev perk = #lv perk
# 升级要价格 ≥1 才走升级流程：先补 1 金钱再按 1 金钱升级
scoreboard players set price shop.price 1
scoreboard players add @s gold 1
function map:shop/interact/buy_perk1 {item:extra_health}
tag @s remove target
tag @s remove target0
tag @s remove bought
function map:debug/menu/trigger/get_extra_health0

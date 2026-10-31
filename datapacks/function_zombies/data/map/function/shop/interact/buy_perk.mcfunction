
scoreboard players operation uuid shop.uuid = @s shop.uuid
execute as @a at @s if score @s uuid = uuid shop.uuid run tag @s add target
$data modify storage shop root.state.perk set value $(perk)
$execute unless items entity @p[tag=target] container.* *[custom_data~{tag:["$(perk)","upgradable"]}] run scoreboard players operation price shop.price = $(perk) shop.price
$execute if items entity @p[tag=target] container.* *[custom_data~{tag:["$(perk)","upgradable"]}] run data modify storage shop root.state.lv set from entity @p[tag=target] Inventory[{components:{"minecraft:custom_data":{tag:["$(perk)","upgradable"]}}}].components."minecraft:custom_data".lv
function map:shop/interact/buy_perk0 with storage shop root.state
$execute as @p[tag=target] at @s run function map:shop/interact/buy_perk1 {item:$(perk)}
execute if entity @p[tag=target0] run function map:shop/interact/perk/menu1
$execute if entity @p[tag=target0] run data modify entity @s data.shop.perk set value $(perk)
$execute if entity @p[tag=target0] run data modify entity @s data.shop.lore set from entity @s Items[{components:{"minecraft:custom_data":{tag:["$(perk)"]}}}].components."minecraft:lore"
execute if entity @p[tag=target0] run function map:shop/interact/perk/menu2
execute if entity @p[tag=bought] run function map:shop/interact/menu_close
tag @a[tag=target0] remove target0
tag @a[tag=target] remove target
function map:shop/interact/menu_reset
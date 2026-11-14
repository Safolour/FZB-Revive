execute if data storage map:shop_upgrade context.item{gun:"blueprint"} run function weapon:range/gun/_get_item/replace/blueprint_upgrade with storage map:shop_upgrade context.item
$execute unless data storage map:shop_upgrade context.item{gun:"blueprint"} run function weapon:range/gun/_get_item/replace/$(upgrade) with storage map:shop_upgrade context.item
# Fill the actual result, including a blueprint which has evolved into function.
data modify storage map:shop_upgrade context.result set from entity @s SelectedItem.components."minecraft:custom_data"
function map:shop/upgrade/refill with storage map:shop_upgrade context.result
execute in minecraft:overworld run function inventory:item_store0
playsound entity.player.levelup record @s ~ ~ ~ 1 1 0
# Blueprint/evolution getters already emit their production message.
execute if items entity @s weapon *[custom_data~{tag:["reset"]}] run return 1
execute if items entity @s weapon *[custom_data~{gun:"function"}] run return 1
function map:shop/upgrade/gun_feedback with storage map:shop_upgrade context.item

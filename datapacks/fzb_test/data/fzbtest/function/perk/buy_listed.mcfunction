# 以假人身份执行：按商店真实查价流程购买/升级增益（价格来自 shop.price 价格表，与 map:shop/interact/buy_perk 一致）
data modify storage shop root.state set value {}
$data modify storage shop root.state.perk set value $(perk)
$execute unless items entity @s container.* *[custom_data~{tag:["$(perk)","upgradable"]}] run scoreboard players operation price shop.price = $(perk) shop.price
$execute if items entity @s container.* *[custom_data~{tag:["$(perk)","upgradable"]}] run data modify storage shop root.state.lv set from entity @s Inventory[{components:{"minecraft:custom_data":{tag:["$(perk)","upgradable"]}}}].components."minecraft:custom_data".lv
execute if data storage shop root.state.lv run function map:shop/interact/buy_perk0 with storage shop root.state
$function map:shop/interact/buy_perk1 {item:$(perk)}
data remove storage shop root.state
tag @s remove target
tag @s remove target0
tag @s remove bought

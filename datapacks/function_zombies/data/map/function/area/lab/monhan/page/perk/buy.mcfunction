# 买错过的增益：统一价格与 replay 一致，为 10,000；槽位处理与普通增益购买相同
$execute if items entity @s container.* *[custom_data~{tag:["$(perk)"]}] run return run function map:area/lab/monhan/page/perk/owned
scoreboard players operation #price monhan = perk.missed.price monhan

data remove storage shop root.buy.slot
execute if items entity @s container.* *[custom_data~{tag:["perk_slot"]}] run function map:shop/buy/get_perk_slot
execute unless data storage shop root.buy.slot if items entity @s weapon.mainhand *[custom_data~{tag:["perk"]}] store result storage shop root.buy.slot int 1 run data get entity @s SelectedItemSlot
execute unless data storage shop root.buy.slot run return run function map:area/lab/monhan/page/perk/full

execute store result score #ok monhan run function map:area/lab/monhan/page/pay
execute unless score #ok monhan matches 1 run return run data remove storage shop root.buy
$function map:shop/_get_item/perk/$(perk) with storage shop root.buy
data remove storage shop root.buy
$function map:area/lab/monhan/dialog/buy {c:'{translate:"zb.shop.item.$(perk)"}'}

function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 64
function map:area/lab/monhan/dialog/say {t:"perk.13"}
function map:area/lab/monhan/dialog/opt {c:1,t:"perk.14",i:1}
function map:area/lab/monhan/dialog/gap

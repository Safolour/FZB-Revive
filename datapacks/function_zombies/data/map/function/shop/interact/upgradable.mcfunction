
execute if score @s gold < price shop.price run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute if score @s gold < price shop.price run return run tellraw @s [{translate:"zb.shop.tellraw.1"}]

execute if items entity @s weapon *[custom_data~{tag:["maximum"]}] run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute if items entity @s weapon *[custom_data~{tag:["maximum"]}] run return run tellraw @s [{translate:"zb.shop.tellraw.14"}]
data modify storage shop root.state set from entity @s SelectedItem.components."minecraft:custom_data"
loot replace block 1 -60 1 container.0 loot map:playerhead
data modify storage shop root.state.name set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
item replace block 1 -60 1 container.0 with air
execute if items entity @s weapon *[custom_data~{tag:["upgradable","gun"]}] run return run function map:shop/buy/upgrade_gun with storage shop root.state
execute if items entity @s weapon *[custom_data~{tag:["upgradable","melee"]}] run return run function map:shop/buy/upgrade_melee with storage shop root.state
playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
tellraw @s [{translate:"zb.shop.tellraw.12"}]
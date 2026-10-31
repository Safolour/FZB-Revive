scoreboard players set @s inventory 2
$execute store result score #migrate_count weapon.state run data get entity @s Inventory[{Slot:$(slot)b}].count
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".ammo set value "ultimaterainbowshotguniii"
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:lore" set value [[{"translate":"zb.item.gun.ultimaterainbowshotguniii.lore.0"}],[{"translate":"zb.item.gun.ultimaterainbowshotguniii.lore.1"}],[{"text":""}],[{"with":[{"translate":"§83.5 ➜ §a4.0§r"}],"translate":"zb.item.gun.0"}],[{"with":[{"translate":"§8110 ➜ §a§a120§r§r"}],"translate":"zb.item.gun.1"}],[{"with":[{"translate":"§812 ➜ §a§a15§r§r"}],"translate":"zb.item.gun.2"}],[{"with":[{"translate":"§80.65 ➜ §a0.50§r"}],"translate":"zb.item.gun.3"}],[{"with":[{"translate":"§82.50 ➜ §a2.00§r"}],"translate":"zb.item.gun.4"}],[{"with":[{"translate":"§810 ➜ §a§a12§r§r"}],"translate":"zb.item.gun.5"}],[{"with":["§a3§r"],"translate":"zb.item.gun.6"}],[{"with":[{"translate":"§a5§r"}],"translate":"zb.item.gun.12"}],[{"text":""}],[{"translate":"zb.item.gun.end.0"}],[{"translate":"zb.item.gun.end.1"}]]
execute store result block 1 -60 1 Items[{Slot:26b}].count float 1 run scoreboard players get #migrate_count weapon.state
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
function inventory:item_store
scoreboard players set @s inventory 1

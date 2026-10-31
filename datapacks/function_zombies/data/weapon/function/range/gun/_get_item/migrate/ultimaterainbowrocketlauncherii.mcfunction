scoreboard players set @s inventory 2
$execute store result score #migrate_count weapon.state run data get entity @s Inventory[{Slot:$(slot)b}].count
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".ammo set value "ultimaterainbowrocketlauncherii"
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:lore" set value [[{"translate":"zb.item.gun.ultimaterainbowrocketlauncherii.lore.0"}],[{"translate":"zb.item.gun.ultimaterainbowrocketlauncherii.lore.1"}],[{"text":""}],[{"with":[{"translate":"§811.0 ➜ §a14.0§r"}],"translate":"zb.item.gun.0"}],[{"with":[{"translate":"§872 ➜ §a§a112§r§r"}],"translate":"zb.item.gun.1"}],[{"with":[{"translate":"§86 ➜ §a§a8§r§r"}],"translate":"zb.item.gun.2"}],[{"with":[{"translate":"§81.80 ➜ §a2.10§r"}],"translate":"zb.item.gun.3"}],[{"with":[{"translate":"§82.80 ➜ §a2.60§r"}],"translate":"zb.item.gun.4"}],[{"with":[{"translate":"§a256§r"}],"translate":"zb.item.gun.5"}],[{"with":["§83 ➜ §a§a4§r§r"],"translate":"zb.item.gun.6"}],[{"text":""}],[{"translate":"zb.item.gun.end.0"}],[{"translate":"zb.item.gun.end.1"}]]
execute store result block 1 -60 1 Items[{Slot:26b}].count float 1 run scoreboard players get #migrate_count weapon.state
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
function inventory:item_store
scoreboard players set @s inventory 1

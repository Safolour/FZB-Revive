scoreboard players set @s inventory 2
$execute store result score #migrate_count weapon.state run data get entity @s Inventory[{Slot:$(slot)b}].count
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".ammo set value "ultimateaurora"
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:lore" set value [[{"translate":"zb.item.gun.ultimateaurora.lore.0"}],[{"translate":"zb.item.gun.ultimateaurora.lore.1"}],[{"translate":"zb.item.gun.ultimateaurora.lore.2"}],[{"translate":"zb.item.gun.ultimateaurora.lore.3"}],[{"translate":"zb.item.gun.ultimateaurora.lore.4"}],[{"translate":"zb.item.gun.ultimateaurora.lore.5"}],[{"text":""}],[{"with":[{"translate":"§840.0 ➜ §a70.0§r"}],"translate":"zb.item.gun.0"}],[{"with":[{"translate":"§840 ➜ §a§a70§r§r"}],"translate":"zb.item.gun.1"}],[{"with":[{"translate":"§84 ➜ §a§a7§r§r"}],"translate":"zb.item.gun.2"}],[{"with":[{"translate":"§82.00 ➜ §a1.50§r"}],"translate":"zb.item.gun.3"}],[{"with":[{"translate":"§83.50 ➜ §a2.00§r"}],"translate":"zb.item.gun.4"}],[{"with":[{"translate":"§a1024§r"}],"translate":"zb.item.gun.5"}],[{"with":[{"translate":"§82 ➜ §a§a3§r§r"}],"translate":"zb.item.gun.7"}],[{"with":[{"translate":"zb.item.gun.infinity"}],"translate":"zb.item.gun.9"}],[{"text":""}],[{"translate":"zb.item.gun.end.0"}],[{"translate":"zb.item.gun.end.1"}]]
execute store result block 1 -60 1 Items[{Slot:26b}].count float 1 run scoreboard players get #migrate_count weapon.state
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
function inventory:item_store
scoreboard players set @s inventory 1

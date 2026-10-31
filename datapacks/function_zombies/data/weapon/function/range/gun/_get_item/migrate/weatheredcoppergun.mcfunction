scoreboard players set @s inventory 2
$execute store result score #migrate_count weapon.state run data get entity @s Inventory[{Slot:$(slot)b}].count
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".ammo set value "weatheredcoppergun"
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:lore" set value [[{"translate":"zb.item.gun.weatheredcoppergun.lore.0"}],[{"translate":"zb.item.gun.weatheredcoppergun.lore.1"}],[{"text":""}],[{"with":[{"translate":"§a14.0§r"}],"translate":"zb.item.gun.0"}],[{"with":[{"translate":"§a65§r"}],"translate":"zb.item.gun.1"}],[{"with":[{"translate":"§a4§r"}],"translate":"zb.item.gun.2"}],[{"with":[{"translate":"§a0.§a30§r"}],"translate":"zb.item.gun.3"}],[{"with":[{"translate":"§a3.00§r"}],"translate":"zb.item.gun.4"}],[{"with":[{"translate":"§a32§r"}],"translate":"zb.item.gun.5"}],[{"with":[{"translate":"§a8§r"}],"translate":"zb.item.gun.12"}],[{"text":""}],[{"translate":"zb.item.gun.end.0"}],[{"translate":"zb.item.gun.end.1"}]]
execute store result block 1 -60 1 Items[{Slot:26b}].count float 1 run scoreboard players get #migrate_count weapon.state
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
function inventory:item_store
scoreboard players set @s inventory 1

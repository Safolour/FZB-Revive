scoreboard players set @s inventory 2
$execute store result score #migrate_count weapon.state run data get entity @s Inventory[{Slot:$(slot)b}].count
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".ammo set value "soulflamethrower"
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:lore" set value [[{"translate":"zb.item.gun.soulflamethrower.lore.0"}],[{"translate":"zb.item.gun.soulflamethrower.lore.1"}],[{"text":""}],[{"with":[{"translate":"§a1.0§r"}],"translate":"zb.item.gun.0"}],[{"with":[{"translate":"§a550§r"}],"translate":"zb.item.gun.1"}],[{"with":[{"translate":"§a85§r"}],"translate":"zb.item.gun.2"}],[{"with":[{"translate":"§a0.§a10§r"}],"translate":"zb.item.gun.3"}],[{"with":[{"translate":"§a3.00§r"}],"translate":"zb.item.gun.4"}],[{"with":[{"translate":"§a64§r"}],"translate":"zb.item.gun.5"}],[{"with":[{"translate":"§a0.5§r"}],"translate":"zb.item.gun.7"}],[{"with":[{"translate":"§a1-3§r"}],"translate":"zb.item.gun.12"}],[{"with":[{"translate":"§a7.5§r"}],"translate":"zb.item.gun.11"}],[{"text":""}],[{"translate":"zb.item.gun.end.0"}],[{"translate":"zb.item.gun.end.1"}]]
execute store result block 1 -60 1 Items[{Slot:26b}].count float 1 run scoreboard players get #migrate_count weapon.state
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
function inventory:item_store
scoreboard players set @s inventory 1

scoreboard players set @s inventory 2
$execute store result score #migrate_count weapon.state run data get entity @s Inventory[{Slot:$(slot)b}].count
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".ammo set value "resonance"
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:lore" set value [[{"translate":"zb.item.gun.resonance.lore.0"}],[{"translate":"zb.item.gun.resonance.lore.1"}],[{"translate":"zb.item.gun.resonance.lore.2"}],[{"translate":"zb.item.gun.resonance.lore.3"}],[{"translate":"zb.item.gun.resonance.lore.4"}],[{"translate":"zb.item.gun.resonance.lore.5"}],[{"text":""}],[{"with":[{"translate":"§a3.0§r"}],"translate":"zb.item.gun.0"}],[{"with":[{"translate":"§a500§r"}],"translate":"zb.item.gun.1"}],[{"with":[{"translate":"§a50§r"}],"translate":"zb.item.gun.2"}],[{"with":[{"translate":"§a1.§a00§r"}],"translate":"zb.item.gun.3"}],[{"with":[{"translate":"§a1.00§r"}],"translate":"zb.item.gun.4"}],[{"with":[{"translate":"§a30§r"}],"translate":"zb.item.gun.5"}],[{"with":[{"translate":"§a2§r"}],"translate":"zb.item.gun.9"}],[{"with":[{"translate":"§a5§r"}],"translate":"zb.item.gun.12"}],[{"with":[{"translate":"§a50.0§r"}],"translate":"zb.item.gun.24"}],[{"text":""}],[{"translate":"zb.item.gun.end.0"}],[{"translate":"zb.item.gun.end.1"}],[{"with":[{"italic":false,"keybind":"key.drop","color":"yellow"}],"translate":"zb.item.gun.resonance.lore.6"}]]
execute store result block 1 -60 1 Items[{Slot:26b}].count float 1 run scoreboard players get #migrate_count weapon.state
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
function inventory:item_store
scoreboard players set @s inventory 1

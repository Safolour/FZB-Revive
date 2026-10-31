scoreboard players set @s inventory 2
$execute store result score #migrate_count weapon.state run data get entity @s Inventory[{Slot:$(slot)b}].count
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".ammo set value "season_spring"
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:lore" set value [[{"translate":"zb.item.gun.season_spring.lore.0"}],[{"translate":"zb.item.gun.season_spring.lore.1"}],[{"text":""}],[{"with":[{"translate":"§a8.0§r"}],"translate":"zb.item.gun.0"}],[{"with":[{"translate":"§a240§r"}],"translate":"zb.item.gun.1"}],[{"with":[{"translate":"§a10§r"}],"translate":"zb.item.gun.2"}],[{"with":[{"translate":"§a0.40§r"}],"translate":"zb.item.gun.3"}],[{"with":[{"translate":"§a1.40§r"}],"translate":"zb.item.gun.4"}],[{"with":[{"translate":"§a28§r"}],"translate":"zb.item.gun.5"}],[{"text":""}],[{"translate":"zb.item.gun.end.0"}],[{"translate":"zb.item.gun.end.1"}]]
execute store result block 1 -60 1 Items[{Slot:26b}].count float 1 run scoreboard players get #migrate_count weapon.state
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
function inventory:item_store
scoreboard players set @s inventory 1

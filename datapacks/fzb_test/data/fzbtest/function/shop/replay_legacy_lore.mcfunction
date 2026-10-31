scoreboard players set @s inventory 2
$execute store result score #legacy_count fzbtest.tmp run data get entity @s Inventory[{Slot:$(slot)b}].count
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:lore" set value ["OLD_LORE"]
execute store result block 1 -60 1 Items[{Slot:26b}].count float 1 run scoreboard players get #legacy_count fzbtest.tmp
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
function inventory:item_store
scoreboard players set @s inventory 1

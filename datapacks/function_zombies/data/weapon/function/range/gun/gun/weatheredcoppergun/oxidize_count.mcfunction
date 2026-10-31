scoreboard players set @s inventory 2
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
execute store result block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".oxidation_shots int 1 run scoreboard players get #copper_shots weapon.state
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
function inventory:item_store
scoreboard players set @s inventory 1

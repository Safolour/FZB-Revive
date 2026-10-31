$execute unless items entity @s hotbar.$(slot) *[custom_data~{gun:"resonance"}] run return 0
scoreboard players set @s inventory 2
$item replace block 1 -60 1 container.26 from entity @s hotbar.$(slot)
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:damage" set value 0
$item replace entity @s hotbar.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
scoreboard players set @s inventory 1

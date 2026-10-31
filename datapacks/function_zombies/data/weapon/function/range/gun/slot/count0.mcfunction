
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
execute store result block 1 -60 1 Items[{Slot:26b}].count float 1 run scoreboard players get clip_ammo weapon.state
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:damage" set value 0
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
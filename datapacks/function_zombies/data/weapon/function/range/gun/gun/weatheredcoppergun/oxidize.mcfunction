scoreboard players set #copper_shots weapon.state 0
execute if data entity @s SelectedItem.components."minecraft:custom_data".oxidation_shots store result score #copper_shots weapon.state run data get entity @s SelectedItem.components."minecraft:custom_data".oxidation_shots
scoreboard players add #copper_shots weapon.state 1
execute store result storage weapon copper.slot int 1 run data get entity @s SelectedItemSlot
execute if score #copper_shots weapon.state matches 85.. run return run function weapon:range/gun/gun/weatheredcoppergun/oxidize_next with storage weapon copper
function weapon:range/gun/gun/weatheredcoppergun/oxidize_count with storage weapon copper
data remove storage weapon copper

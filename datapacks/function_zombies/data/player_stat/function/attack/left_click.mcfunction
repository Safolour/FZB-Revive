
scoreboard players set @s weapon.damage_dealt 1
execute if data entity @s active_effects[{id:"minecraft:weakness"}] run return fail
data modify storage weapon root.item set from entity @s SelectedItem.components."minecraft:custom_data"
function player_stat:attack/get_stat with storage weapon root.item
scoreboard players set range stat.attack.range 0
scoreboard players set hit stat.attack.range 0
execute anchored eyes positioned ^ ^ ^ run function player_stat:attack/loop
execute if score hit stat.attack.range matches 1 run effect give @s weakness 1 200 true
data remove storage weapon root
scoreboard players set @s weapon.use 0
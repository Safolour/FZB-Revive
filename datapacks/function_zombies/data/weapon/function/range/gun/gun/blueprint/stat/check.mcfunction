execute store result storage weapon bp.chk.id int 1 run scoreboard players get @s weapon.bp_id
execute if function weapon:range/gun/gun/blueprint/stat/check0 run return run data remove storage weapon bp.chk
data remove storage weapon bp.chk
data modify storage weapon bp.sync set from entity @s SelectedItem.components."minecraft:custom_data".stat
function weapon:range/gun/gun/blueprint/stat/read

# Explicit upgrade entry: only the actual held blueprint supplies its old count.
execute unless items entity @s weapon.mainhand *[custom_data~{gun:"blueprint"}] run return fail
$data modify storage weapon bp.request set value {slot:$(slot),ultimate:0}
execute store result score #bp_ult weapon.state run data get entity @s SelectedItem.components."minecraft:custom_data".stat.ultimate
scoreboard players add #bp_ult weapon.state 1
execute store result storage weapon bp.request.ultimate int 1 run scoreboard players get #bp_ult weapon.state
function weapon:range/gun/gun/blueprint/get_item with storage weapon bp.request
data remove storage weapon bp.request

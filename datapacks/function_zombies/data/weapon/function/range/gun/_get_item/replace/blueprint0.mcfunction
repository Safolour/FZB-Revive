# Both creation and upgrade pass an explicit roll count; never inspect unrelated shop storage.
$scoreboard players set #bp_ult weapon.state $(ultimate)
# Matches scale with their participants; training always reaches function at 100.
execute store result score #bp_full weapon.state if entity @a[scores={system.room=4,stat.player=1..3}]
execute if score #bp_full weapon.state matches ..0 run scoreboard players set #bp_full weapon.state 1
execute if score @s system.room matches 2 run scoreboard players set #bp_full weapon.state 1
scoreboard players operation #bp_full weapon.state *= 100 number
# 满了就变成函数
execute if score #bp_ult weapon.state >= #bp_full weapon.state run return run function weapon:range/gun/gun/blueprint/roll/evolve
function weapon:range/gun/gun/blueprint/roll/new
item replace block 1 -60 1 container.26 with carrot_on_a_stick[max_damage=10000]
data modify block 1 -60 1 Items[{Slot:26b}].components merge from storage weapon bp.comp
$data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".slot set value $(slot)
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
# 新属性马上读进玩家（后面的 allammo、幸运箱提示都用新数值）
data modify storage weapon bp.sync set from storage weapon bp.comp."minecraft:custom_data".stat
function weapon:range/gun/gun/blueprint/stat/read
# The new roll determines its ammunition; filling before rolling used the previous gun's values.
$scoreboard players set @s weapon.gun_blueprint_slot $(slot)
function weapon:range/gun/gun/blueprint/allammo
execute if score #bp_ult weapon.state matches 1.. run function weapon:range/gun/gun/blueprint/roll/tellraw
data remove storage weapon bp.comp

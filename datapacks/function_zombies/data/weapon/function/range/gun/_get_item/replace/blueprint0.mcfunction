# get_item 调用（storage weapon root 里有 slot）。终极强化机（map:shop/buy/upgrade_gun）调用时 storage shop root.state 是旧蓝图的 custom_data
scoreboard players set #bp_ult weapon.state 0
execute if data storage shop root.state.stat.ultimate store result score #bp_ult weapon.state run data get storage shop root.state.stat.ultimate
execute if data storage shop root.state.stat.ultimate run scoreboard players add #bp_ult weapon.state 1
# 满强化次数 = 局内人数 × 100
execute store result score #bp_full weapon.state if entity @a[scores={system.room=4}]
execute if score #bp_full weapon.state matches ..0 run scoreboard players set #bp_full weapon.state 1
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
execute if data storage shop root.state.stat.ultimate run function weapon:range/gun/gun/blueprint/roll/tellraw
data remove storage weapon bp.comp

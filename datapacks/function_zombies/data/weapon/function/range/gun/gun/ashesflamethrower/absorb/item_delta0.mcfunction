# 暂存物品到工作方块以修改 custom_data，再放回原槽；与 slot/count0 使用相同的工作方块
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
execute unless data block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".ashes_gold run data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".ashes_gold set value 0
execute store result score #ashes_bank weapon.state run data get block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".ashes_gold 1
execute store result score #ashes_delta weapon.state run data get storage weapon ashes.delta 1
scoreboard players operation #ashes_bank weapon.state += #ashes_delta weapon.state
execute if score #ashes_bank weapon.state matches ..-1 run scoreboard players set #ashes_bank weapon.state 0
# 储量以 0.01 HP 为单位，每把枪最多储存 60 HP
execute if score #ashes_bank weapon.state matches 6001.. run scoreboard players set #ashes_bank weapon.state 6000
execute store result block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".ashes_gold int 1 run scoreboard players get #ashes_bank weapon.state
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air

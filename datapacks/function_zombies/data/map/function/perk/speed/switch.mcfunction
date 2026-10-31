# 手持速度右键：等级 1 → 2 → 3 → 1（物品数量就是等级，lore 第 1 行同步改）
execute if score @s perk.switch_cd matches 1.. run return fail
scoreboard players set @s perk.switch_cd 20
execute store result score #lv perk run data get entity @s SelectedItem.count
scoreboard players add #lv perk 1
execute if score #lv perk matches 4.. run scoreboard players set #lv perk 1
# 降级时先清掉高级的效果，不然要等它自己过期
effect clear @s speed
execute store result storage perk root.count int 1 run scoreboard players get #lv perk
data modify storage perk root.lore set value "zb.item.perk.speed.lore0"
execute if score #lv perk matches 2 run data modify storage perk root.lore set value "zb.item.perk.speed.lore0.2"
execute if score #lv perk matches 3 run data modify storage perk root.lore set value "zb.item.perk.speed.lore0.3"
function map:perk/speed/switch0 with storage perk root
data remove storage perk root
execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1

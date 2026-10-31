# 金钱丢失（gold_thrower）：持有者每 tick 由 map:perk/tick 调用
# 其余部分：伤害 -10%×玩家数（perk/hit/damage_extra）、命中金钱同比例减少（perk/gold_thrower/gold_cut）、
# 击杀时概率掉落三倍金钱，手持金质武器（custom_data 带 golden）掉四倍（perk/gold_thrower/drop）
execute store result score #cut perk.gold_thrower if entity @a[scores={system.room=4}]
scoreboard players operation #cut perk.gold_thrower *= cut_per_player perk.gold_thrower
scoreboard players operation #cut perk.gold_thrower < cut_max perk.gold_thrower

# 左键（挥手、换弹都算）-1 金钱
execute if score @s interaction.left_click matches 1.. run function map:perk/gold_thrower/swing
# 没打中的子弹（霰弹每一颗单独算：本 tick 开枪数 - 命中数），每颗扣掉这把枪命中金钱（不算暴击）被减少的那部分
scoreboard players operation #miss perk = #shot perk
scoreboard players operation #miss perk -= #hit perk
execute if score #miss perk matches 1.. run function map:perk/gold_thrower/miss with entity @s SelectedItem.components."minecraft:custom_data"

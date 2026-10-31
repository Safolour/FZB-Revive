# 本 tick 开过枪：扣 cost（0.1 生命为单位）点生命，但不会扣到保留线以下
execute store result score #mode perk run data get entity @s Inventory[{components:{"minecraft:custom_data":{tag:["ashes_bullet"]}}}].count
execute if score #mode perk matches ..1 if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_sneaking:true}}} run return fail
# 保留线（0.1 生命）：不保留档至少留 1 点生命，其余档 = 最大生命 × 百分比
scoreboard players set #keep perk 10
execute if score #mode perk matches 2.. run scoreboard players operation #keep perk = @s stat.max_health
execute if score #mode perk matches 2.. run scoreboard players operation #keep perk *= #mode perk
execute if score #mode perk matches 2.. run scoreboard players operation #keep perk /= 10 number
execute store result score #hp perk run data get entity @s Health 10
scoreboard players operation #hp perk -= cost perk.ashes_bullet
execute if score #hp perk < #keep perk run return fail
execute store result storage perk root.points float -0.1 run scoreboard players get cost perk.ashes_bullet
function bs.health:add/health with storage perk root
execute at @s run playsound minecraft:block.stone.break player @a ~ ~ ~ 1.5 1
data remove storage perk root

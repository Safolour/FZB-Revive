# 玩家执行；先确认缓存包含这件物品，再恢复快捷栏，成功后才派发丢弃键技能。
execute unless score @s inventory.lock matches 1 run return 0
execute if entity @s[tag=debug] run return 0
$execute if entity @s[scores={system.room=3..}] unless data entity @s EnderItems[{Slot:26b}].components."minecraft:custom_data".root.player_item.list[{id:"$(id)",components:{"minecraft:custom_data":$(custom_data)}}] run return 0
$execute unless entity @s[scores={system.room=3..}] unless data entity @s EnderItems[{Slot:25b}].components."minecraft:custom_data".root.player_item.list[{id:"$(id)",components:{"minecraft:custom_data":$(custom_data)}}] run return 0
scoreboard players set #drop_cached_count inventory 0
$execute if entity @s[scores={system.room=3..}] store result score #drop_cached_count inventory run data get entity @s EnderItems[{Slot:26b}].components."minecraft:custom_data".root.player_item.list[{id:"$(id)",components:{"minecraft:custom_data":$(custom_data)}}].count
$execute unless entity @s[scores={system.room=3..}] store result score #drop_cached_count inventory run data get entity @s EnderItems[{Slot:25b}].components."minecraft:custom_data".root.player_item.list[{id:"$(id)",components:{"minecraft:custom_data":$(custom_data)}}].count
execute store result score #drop_count inventory run data get storage inventory:throw_item root.count
execute unless score #drop_cached_count inventory >= #drop_count inventory run return 0
function inventory:item_restore
$execute unless items entity @s hotbar.* $(id)[custom_data~$(custom_data),count~{min:$(count)}] run return 0
execute if data storage inventory:throw_item root{function:1b} run tag @s add weapon.function_laser
execute if data storage inventory:throw_item root{summer:1b} run tag @s add weapon.season_summer_burst
execute if data storage inventory:throw_item root{resonance:1b} run tag @s add weapon.res_request
execute if data storage inventory:throw_item root{paradox:1b} run tag @s add weapon.pd_q
return 1

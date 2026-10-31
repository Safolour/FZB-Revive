# 玩家执行：容量固定 1000；读取物品释放阈值到 weapon.laser_threshold，旧 laser_cap 作为迁移来源
scoreboard players set @s weapon.laser_cap 1000
execute if data entity @s SelectedItem.components."minecraft:custom_data".laser_threshold run execute store result score @s weapon.laser_threshold run data get entity @s SelectedItem.components."minecraft:custom_data".laser_threshold
execute unless data entity @s SelectedItem.components."minecraft:custom_data".laser_threshold if data entity @s SelectedItem.components."minecraft:custom_data".laser_cap run execute store result score @s weapon.laser_threshold run data get entity @s SelectedItem.components."minecraft:custom_data".laser_cap
execute unless data entity @s SelectedItem.components."minecraft:custom_data".laser_threshold unless data entity @s SelectedItem.components."minecraft:custom_data".laser_cap run scoreboard players set @s weapon.laser_threshold 1000
execute if score @s weapon.laser_threshold matches ..199 run scoreboard players set @s weapon.laser_threshold 200
execute if score @s weapon.laser_threshold matches 1001.. run scoreboard players set @s weapon.laser_threshold 1000

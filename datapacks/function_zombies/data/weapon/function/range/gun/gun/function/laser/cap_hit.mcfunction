# 玩家执行（射手，laser/hit 调用）：每命中一只怪，本枪释放阈值 −2，最低 200；写回物品
# @s weapon.laser_threshold 已由释放前 cap_read 读取；物品经 container.26 中转写回
scoreboard players remove @s weapon.laser_threshold 2
execute if score @s weapon.laser_threshold matches ..199 run scoreboard players set @s weapon.laser_threshold 200
# 避免背包 item_restore 撤销阈值写入
scoreboard players set @s inventory 2
item replace block 1 -60 1 container.26 from entity @s weapon.mainhand
execute store result block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".laser_threshold int 1 run scoreboard players get @s weapon.laser_threshold
item replace entity @s weapon.mainhand from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
tag @s add weapon.laser_cap_dirty
scoreboard players set @s inventory 1

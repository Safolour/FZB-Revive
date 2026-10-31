# 背包系统在 inventory=1 时会还原物品改动（同 weapon:range/gun/slot/count 的写法）
scoreboard players operation #inv perk = @s inventory
scoreboard players set @s inventory 2
item modify entity @s weapon.mainhand [{function:"minecraft:set_count",count:1},{function:"minecraft:set_lore",mode:"replace_section",offset:3,size:1,lore:[[{translate:"zb.item.perk.ashes_bullet.lore3"}]]}]
scoreboard players operation @s inventory = #inv perk
tellraw @s [{translate:"zb.item.perk.ashes_bullet.tellraw0",with:[{translate:"zb.item.perk.ashes_bullet.1"},{translate:"zb.item.perk.ashes_bullet.lore3"}]}]

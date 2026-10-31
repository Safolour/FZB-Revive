# 背包系统在 inventory=1 时会还原物品改动（同 weapon:range/gun/slot/count 的写法）
scoreboard players operation #inv perk = @s inventory
scoreboard players set @s inventory 2
$item modify entity @s weapon.mainhand [{function:"minecraft:set_count",count:$(count)},{function:"minecraft:set_lore",mode:"replace_section",offset:0,size:1,lore:[[{translate:"$(lore)"}]]}]
scoreboard players operation @s inventory = #inv perk
$tellraw @s [{translate:"zb.item.perk.speed.tellraw.0",with:[{text:"$(count)",color:"yellow"}]}]

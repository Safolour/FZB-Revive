# 背包系统在 inventory=1 时会还原物品改动（同 weapon:range/gun/slot/count 的写法）
scoreboard players operation #inv perk = @s inventory
scoreboard players set @s inventory 2
item modify entity @s weapon.mainhand [{function:"minecraft:set_components",components:{"minecraft:potion_contents":{custom_color:16711680}}},{function:"minecraft:set_lore",mode:"replace_section",offset:0,size:1,lore:[[{translate:"zb.item.perk.absorptionconversion.lore0"}]]}]
scoreboard players operation @s inventory = #inv perk
scoreboard players set @s perk.absorption_mode 0
tellraw @s [{translate:"zb.item.perk.absorptionconversion.tellraw0",with:[{translate:"zb.item.perk.absorptionconversion.1"},{translate:"zb.item.perk.absorptionconversion.tellraw1"}]}]
execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1

# 切换伤害加成 ↔ 抗性加成：药水瓶颜色（录像里伤害加成是 16711680 红色）和 lore 第 1 行一起改
execute if score @s perk.switch_cd matches 1.. run return fail
scoreboard players set @s perk.switch_cd 20
execute if score @s perk.absorption_mode matches 1 run return run function map:perk/absorptionconversion/switch_damage
# 背包系统在 inventory=1 时会还原物品改动（同 weapon:range/gun/slot/count 的写法）
scoreboard players operation #inv perk = @s inventory
scoreboard players set @s inventory 2
item modify entity @s weapon.mainhand [{function:"minecraft:set_components",components:{"minecraft:potion_contents":{custom_color:16776960}}},{function:"minecraft:set_lore",mode:"replace_section",offset:0,size:1,lore:[[{translate:"zb.item.perk.absorptionconversion.lore1"}]]}]
scoreboard players operation @s inventory = #inv perk
scoreboard players set @s perk.absorption_mode 1
tellraw @s [{translate:"zb.item.perk.absorptionconversion.tellraw0",with:[{translate:"zb.item.perk.absorptionconversion.1"},{translate:"zb.item.perk.absorptionconversion.tellraw2"}]}]
execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1

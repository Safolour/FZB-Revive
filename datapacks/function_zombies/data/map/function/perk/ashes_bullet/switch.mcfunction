# 手持灰烬子弹右键：保留档位 1 → 80 → 60 → 40 → 20 → 1（物品数量就是档位，lore 第 4 行同步改）
execute if score @s perk.switch_cd matches 1.. run return fail
scoreboard players set @s perk.switch_cd 20
execute store result score #mode perk run data get entity @s SelectedItem.count
scoreboard players set #next perk 80
execute if score #mode perk matches 80 run scoreboard players set #next perk 60
execute if score #mode perk matches 60 run scoreboard players set #next perk 40
execute if score #mode perk matches 40 run scoreboard players set #next perk 20
execute if score #mode perk matches 20 run scoreboard players set #next perk 1
execute store result storage perk root.count int 1 run scoreboard players get #next perk
execute if score #next perk matches 1 run function map:perk/ashes_bullet/switch_shift
execute if score #next perk matches 2.. run function map:perk/ashes_bullet/switch_keep with storage perk root
data remove storage perk root
execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1

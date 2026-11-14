# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
clear @s *[custom_data~{tag:["setting_gear"]}]
execute unless score @s system.room matches 2 run return fail
scoreboard players set @s inventory 2
scoreboard players set @s inventory.armor 2
function inventory:armor
scoreboard players set @s inventory 1
function inventory:item_store
data remove storage mainlobby:setting_gear grant
playsound block.note_block.pling ambient @s ~ ~ ~ 0.6 1.5

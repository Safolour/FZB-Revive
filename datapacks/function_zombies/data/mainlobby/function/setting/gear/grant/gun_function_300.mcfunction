# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
clear @s *[custom_data~{tag:["setting_gear"]}]
execute unless score @s system.room matches 2 run return fail
data modify storage mainlobby:setting_gear grant set value {slot:1}
function mainlobby:setting/gear/gun_slot
function weapon:range/gun/gun/function/allammo
function weapon:range/gun/_get_item/replace/function with storage mainlobby:setting_gear grant
data modify storage mainlobby:setting_gear grant.threshold set value 300
function mainlobby:setting/gear/set_function_threshold with storage mainlobby:setting_gear grant
data remove storage mainlobby:setting_gear grant
playsound block.note_block.pling ambient @s ~ ~ ~ 0.6 1.5

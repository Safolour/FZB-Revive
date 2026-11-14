# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
function mainlobby:setting/gear/clean_owner_items
execute if score #gear_return_failed gear.count matches 1 run return 0
data modify entity @s Items set value []
kill @s

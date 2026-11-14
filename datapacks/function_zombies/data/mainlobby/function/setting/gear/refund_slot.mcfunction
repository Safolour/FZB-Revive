# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
# Keep the original stack until a native copy into an empty player slot succeeds.
scoreboard players set #gear_dest gear.count -1
execute as @a[tag=setting.gear_refund_owner] run function mainlobby:setting/gear/refund_empty_slot
execute if score #gear_dest gear.count matches -1 run return run scoreboard players set #gear_return_failed gear.count 1
$data modify storage mainlobby:setting_gear refund.source set value $(source)
execute store result storage mainlobby:setting_gear refund.dest int 1 run scoreboard players get #gear_dest gear.count
function mainlobby:setting/gear/refund_copy with storage mainlobby:setting_gear refund

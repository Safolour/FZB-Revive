# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
# Persistent manual recovery queue: never silently erase real items during reset.
execute unless data storage mainlobby:setting_gear recovery run data modify storage mainlobby:setting_gear recovery set value []
data modify storage mainlobby:setting_gear recovery append value {reason:"settings_reset",legacy_owner:-1,needs_manual_restore:1b}
scoreboard players set #gear_archived gear.count 0
execute store success score #gear_archived gear.count run data modify storage mainlobby:setting_gear recovery[-1].items set from entity @s Items
execute unless score #gear_archived gear.count matches 1 run return 0
data modify storage mainlobby:setting_gear recovery[-1].cart_uuid set from entity @s UUID
execute store result storage mainlobby:setting_gear recovery[-1].legacy_owner int 1 run scoreboard players get @s gear.owner
execute store result storage mainlobby:setting_gear recovery[-1].game_time long 1 run time query gametime
scoreboard players set #owner gear.owner -1
scoreboard players operation #owner gear.owner = @s gear.owner
tag @a[tag=setting.gear_refund_owner] remove setting.gear_refund_owner
execute as @a if score @s uuid = #owner gear.owner run tag @s add setting.gear_refund_owner
execute if entity @a[tag=setting.gear_refund_owner] run data modify storage mainlobby:setting_gear recovery[-1].owner_uuid set from entity @a[tag=setting.gear_refund_owner,limit=1] UUID
tag @a[tag=setting.gear_refund_owner] remove setting.gear_refund_owner
data modify entity @s Items set value []
kill @s

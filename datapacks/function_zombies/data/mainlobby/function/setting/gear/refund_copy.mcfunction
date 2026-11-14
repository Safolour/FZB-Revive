# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
scoreboard players set #gear_copied gear.count 0
# A real client fires inventory_changed during a native copy. Protect it until the cache is updated.
execute store success score #gear_inventory_present gear.count run scoreboard players get @a[tag=setting.gear_refund_owner,limit=1] inventory
execute if score #gear_inventory_present gear.count matches 1 run scoreboard players operation #gear_inventory gear.count = @a[tag=setting.gear_refund_owner,limit=1] inventory
scoreboard players set @a[tag=setting.gear_refund_owner,limit=1] inventory 2
$execute store success score #gear_copied gear.count run item replace entity @a[tag=setting.gear_refund_owner,limit=1] container.$(dest) from entity @s container.$(source)
execute if score #gear_copied gear.count matches 1 as @a[tag=setting.gear_refund_owner,limit=1] in minecraft:overworld run function inventory:item_store0
execute if score #gear_inventory_present gear.count matches 1 run scoreboard players operation @a[tag=setting.gear_refund_owner,limit=1] inventory = #gear_inventory gear.count
execute unless score #gear_inventory_present gear.count matches 1 run scoreboard players reset @a[tag=setting.gear_refund_owner,limit=1] inventory
$execute if score #gear_copied gear.count matches 1 run item replace entity @s container.$(source) with air
execute if score #gear_copied gear.count matches 1 run scoreboard players set #gear_returned gear.count 1
execute unless score #gear_copied gear.count matches 1 run scoreboard players set #gear_return_failed gear.count 1

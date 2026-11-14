# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
scoreboard players set #owner gear.owner -1
scoreboard players operation #owner gear.owner = @s gear.owner
tag @a[tag=setting.gear_refund_owner] remove setting.gear_refund_owner
execute as @a if score @s uuid = #owner gear.owner run tag @s add setting.gear_refund_owner
execute as @a[tag=setting.gear_refund_owner] run clear @s *[custom_data~{tag:["setting_gear"]}]
scoreboard players set #gear_return_failed gear.count 0
scoreboard players set #gear_returned gear.count 0
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.0 * unless items entity @s container.0 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:0}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.1 * unless items entity @s container.1 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:1}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.2 * unless items entity @s container.2 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:2}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.3 * unless items entity @s container.3 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:3}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.4 * unless items entity @s container.4 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:4}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.5 * unless items entity @s container.5 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:5}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.6 * unless items entity @s container.6 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:6}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.7 * unless items entity @s container.7 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:7}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.8 * unless items entity @s container.8 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:8}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.9 * unless items entity @s container.9 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:9}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.10 * unless items entity @s container.10 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:10}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.11 * unless items entity @s container.11 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:11}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.12 * unless items entity @s container.12 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:12}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.13 * unless items entity @s container.13 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:13}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.14 * unless items entity @s container.14 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:14}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.15 * unless items entity @s container.15 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:15}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.16 * unless items entity @s container.16 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:16}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.17 * unless items entity @s container.17 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:17}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.18 * unless items entity @s container.18 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:18}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.19 * unless items entity @s container.19 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:19}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.20 * unless items entity @s container.20 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:20}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.21 * unless items entity @s container.21 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:21}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.22 * unless items entity @s container.22 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:22}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.23 * unless items entity @s container.23 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:23}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.24 * unless items entity @s container.24 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:24}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.25 * unless items entity @s container.25 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:25}
execute unless score #gear_return_failed gear.count matches 1 if items entity @s container.26 * unless items entity @s container.26 *[custom_data~{tag:["setting_gear"]}] run function mainlobby:setting/gear/refund_slot {source:26}
execute if score #gear_returned gear.count matches 1 as @a[tag=setting.gear_refund_owner] in minecraft:overworld run function inventory:item_store0
execute if score #gear_return_failed gear.count matches 1 unless entity @s[tag=setting.gear_refund_pending] run tellraw @a[tag=setting.gear_refund_owner] [{text:"[装备领取] ",color:"gold",bold:true},{text:"快捷栏已满，腾出一格后领取。物品会先保存在这里。",color:"yellow",bold:false}]
execute if score #gear_return_failed gear.count matches 1 run tag @s add setting.gear_refund_pending
execute if score #gear_return_failed gear.count matches 1 run tag @s add opened
execute if score #gear_return_failed gear.count matches 1 run scoreboard players set @s gear.count 20
execute unless score #gear_return_failed gear.count matches 1 run tag @s remove setting.gear_refund_pending
tag @a[tag=setting.gear_refund_owner] remove setting.gear_refund_owner
data remove storage mainlobby:setting_gear refund

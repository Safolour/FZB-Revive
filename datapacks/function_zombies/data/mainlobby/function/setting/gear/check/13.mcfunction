# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
execute unless items entity @s container.0 *[custom_data~{gear_button:"armor_0"}] run return run function mainlobby:setting/gear/give/armor_0
execute unless items entity @s container.1 *[custom_data~{gear_button:"armor_1"}] run return run function mainlobby:setting/gear/give/armor_1
execute unless items entity @s container.2 *[custom_data~{gear_button:"armor_2"}] run return run function mainlobby:setting/gear/give/armor_2
execute unless items entity @s container.3 *[custom_data~{gear_button:"armor_3"}] run return run function mainlobby:setting/gear/give/armor_3
execute unless items entity @s container.4 *[custom_data~{gear_button:"armor_4"}] run return run function mainlobby:setting/gear/give/armor_4
execute unless items entity @s container.5 *[custom_data~{gear_button:"armor_5"}] run return run function mainlobby:setting/gear/give/armor_5
execute unless items entity @s container.6 *[custom_data~{gear_button:"armor_6"}] run return run function mainlobby:setting/gear/give/armor_6
execute unless items entity @s container.7 *[custom_data~{gear_button:"armor_7"}] run return run function mainlobby:setting/gear/give/armor_7
execute unless items entity @s container.18 *[custom_data~{gear_button:"back"}] run return run function mainlobby:setting/gear/menu/1
execute unless items entity @s container.26 *[custom_data~{gear_button:"close"}] run return run function mainlobby:setting/gear/kill
execute store result score #count gear.count run data get entity @s Items
execute unless score @s gear.count = #count gear.count run function mainlobby:setting/gear/menu/13

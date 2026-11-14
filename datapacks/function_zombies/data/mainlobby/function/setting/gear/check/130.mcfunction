# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
execute unless items entity @s container.0 *[custom_data~{gear_button:"gun_function_1000"}] run return run function mainlobby:setting/gear/give/gun_function_1000
execute unless items entity @s container.1 *[custom_data~{gear_button:"gun_function_900"}] run return run function mainlobby:setting/gear/give/gun_function_900
execute unless items entity @s container.2 *[custom_data~{gear_button:"gun_function_800"}] run return run function mainlobby:setting/gear/give/gun_function_800
execute unless items entity @s container.3 *[custom_data~{gear_button:"gun_function_700"}] run return run function mainlobby:setting/gear/give/gun_function_700
execute unless items entity @s container.4 *[custom_data~{gear_button:"gun_function_600"}] run return run function mainlobby:setting/gear/give/gun_function_600
execute unless items entity @s container.5 *[custom_data~{gear_button:"gun_function_500"}] run return run function mainlobby:setting/gear/give/gun_function_500
execute unless items entity @s container.6 *[custom_data~{gear_button:"gun_function_400"}] run return run function mainlobby:setting/gear/give/gun_function_400
execute unless items entity @s container.7 *[custom_data~{gear_button:"gun_function_300"}] run return run function mainlobby:setting/gear/give/gun_function_300
execute unless items entity @s container.8 *[custom_data~{gear_button:"gun_function_200"}] run return run function mainlobby:setting/gear/give/gun_function_200
execute unless items entity @s container.18 *[custom_data~{gear_button:"back"}] run return run function mainlobby:setting/gear/menu/4
execute unless items entity @s container.26 *[custom_data~{gear_button:"close"}] run return run function mainlobby:setting/gear/kill
execute store result score #count gear.count run data get entity @s Items
execute unless score @s gear.count = #count gear.count run function mainlobby:setting/gear/menu/130

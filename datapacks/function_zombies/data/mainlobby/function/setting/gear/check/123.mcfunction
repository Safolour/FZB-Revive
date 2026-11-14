# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
execute unless items entity @s container.0 *[custom_data~{gear_button:"gun_rainbowsniper"}] run return run function mainlobby:setting/gear/give/gun_rainbowsniper
execute unless items entity @s container.1 *[custom_data~{gear_button:"gun_ultimaterainbowsniper"}] run return run function mainlobby:setting/gear/give/gun_ultimaterainbowsniper
execute unless items entity @s container.2 *[custom_data~{gear_button:"gun_ultimaterainbowsniperii"}] run return run function mainlobby:setting/gear/give/gun_ultimaterainbowsniperii
execute unless items entity @s container.3 *[custom_data~{gear_button:"gun_ultimaterainbowsniperiii"}] run return run function mainlobby:setting/gear/give/gun_ultimaterainbowsniperiii
execute unless items entity @s container.18 *[custom_data~{gear_button:"back"}] run return run function mainlobby:setting/gear/menu/4
execute unless items entity @s container.26 *[custom_data~{gear_button:"close"}] run return run function mainlobby:setting/gear/kill
execute store result score #count gear.count run data get entity @s Items
execute unless score @s gear.count = #count gear.count run function mainlobby:setting/gear/menu/123

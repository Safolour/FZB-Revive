# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
execute unless items entity @s container.0 *[custom_data~{gear_button:"gun_soulflamethrower"}] run return run function mainlobby:setting/gear/menu/118
execute unless items entity @s container.1 *[custom_data~{gear_button:"gun_aurora"}] run return run function mainlobby:setting/gear/menu/119
execute unless items entity @s container.2 *[custom_data~{gear_button:"gun_lament"}] run return run function mainlobby:setting/gear/menu/120
execute unless items entity @s container.3 *[custom_data~{gear_button:"gun_coppergun"}] run return run function mainlobby:setting/gear/menu/121
execute unless items entity @s container.4 *[custom_data~{gear_button:"gun_resonance"}] run return run function mainlobby:setting/gear/give/gun_resonance
execute unless items entity @s container.5 *[custom_data~{gear_button:"gun_parallax"}] run return run function mainlobby:setting/gear/give/gun_parallax
execute unless items entity @s container.6 *[custom_data~{gear_button:"gun_rainbowrifle"}] run return run function mainlobby:setting/gear/menu/122
execute unless items entity @s container.7 *[custom_data~{gear_button:"gun_rainbowsniper"}] run return run function mainlobby:setting/gear/menu/123
execute unless items entity @s container.8 *[custom_data~{gear_button:"gun_rainbowshotgun"}] run return run function mainlobby:setting/gear/menu/124
execute unless items entity @s container.9 *[custom_data~{gear_button:"gun_rainbowrocketlauncher"}] run return run function mainlobby:setting/gear/menu/125
execute unless items entity @s container.10 *[custom_data~{gear_button:"gun_season_spring"}] run return run function mainlobby:setting/gear/menu/126
execute unless items entity @s container.11 *[custom_data~{gear_button:"gun_season_summer"}] run return run function mainlobby:setting/gear/menu/127
execute unless items entity @s container.12 *[custom_data~{gear_button:"gun_season_autumn"}] run return run function mainlobby:setting/gear/menu/128
execute unless items entity @s container.13 *[custom_data~{gear_button:"gun_season_winter"}] run return run function mainlobby:setting/gear/menu/129
execute unless items entity @s container.14 *[custom_data~{gear_button:"gun_blueprint"}] run return run function mainlobby:setting/gear/give/gun_blueprint
execute unless items entity @s container.15 *[custom_data~{gear_button:"gun_function"}] run return run function mainlobby:setting/gear/menu/130
execute unless items entity @s container.16 *[custom_data~{gear_button:"gun_paradox"}] run return run function mainlobby:setting/gear/give/gun_paradox
execute unless items entity @s container.18 *[custom_data~{gear_button:"back"}] run return run function mainlobby:setting/gear/menu/1
execute unless items entity @s container.21 *[custom_data~{gear_button:"previous"}] run return run function mainlobby:setting/gear/menu/3
execute unless items entity @s container.26 *[custom_data~{gear_button:"close"}] run return run function mainlobby:setting/gear/kill
execute store result score #count gear.count run data get entity @s Items
execute unless score @s gear.count = #count gear.count run function mainlobby:setting/gear/menu/4

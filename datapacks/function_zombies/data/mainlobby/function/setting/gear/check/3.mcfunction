# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
execute unless items entity @s container.0 *[custom_data~{gear_button:"gun_pistol"}] run return run function mainlobby:setting/gear/menu/100
execute unless items entity @s container.1 *[custom_data~{gear_button:"gun_practicegun"}] run return run function mainlobby:setting/gear/menu/101
execute unless items entity @s container.2 *[custom_data~{gear_button:"gun_rifle"}] run return run function mainlobby:setting/gear/menu/102
execute unless items entity @s container.3 *[custom_data~{gear_button:"gun_sniper"}] run return run function mainlobby:setting/gear/menu/103
execute unless items entity @s container.4 *[custom_data~{gear_button:"gun_shotgun"}] run return run function mainlobby:setting/gear/menu/104
execute unless items entity @s container.5 *[custom_data~{gear_button:"gun_doubleshotgun"}] run return run function mainlobby:setting/gear/menu/105
execute unless items entity @s container.6 *[custom_data~{gear_button:"gun_magnum"}] run return run function mainlobby:setting/gear/menu/106
execute unless items entity @s container.7 *[custom_data~{gear_button:"gun_machinegun"}] run return run function mainlobby:setting/gear/menu/107
execute unless items entity @s container.8 *[custom_data~{gear_button:"gun_rocketlauncher"}] run return run function mainlobby:setting/gear/menu/108
execute unless items entity @s container.9 *[custom_data~{gear_button:"gun_golddigger"}] run return run function mainlobby:setting/gear/menu/109
execute unless items entity @s container.10 *[custom_data~{gear_button:"gun_soaker"}] run return run function mainlobby:setting/gear/menu/110
execute unless items entity @s container.11 *[custom_data~{gear_button:"gun_airgun"}] run return run function mainlobby:setting/gear/menu/111
execute unless items entity @s container.12 *[custom_data~{gear_button:"gun_eldergun"}] run return run function mainlobby:setting/gear/menu/112
execute unless items entity @s container.13 *[custom_data~{gear_button:"gun_musicgun"}] run return run function mainlobby:setting/gear/menu/113
execute unless items entity @s container.14 *[custom_data~{gear_button:"gun_snowballcannon"}] run return run function mainlobby:setting/gear/menu/114
execute unless items entity @s container.15 *[custom_data~{gear_button:"gun_zapper"}] run return run function mainlobby:setting/gear/menu/115
execute unless items entity @s container.16 *[custom_data~{gear_button:"gun_flamethrower"}] run return run function mainlobby:setting/gear/menu/116
execute unless items entity @s container.17 *[custom_data~{gear_button:"gun_ashesflamethrower"}] run return run function mainlobby:setting/gear/menu/117
execute unless items entity @s container.18 *[custom_data~{gear_button:"back"}] run return run function mainlobby:setting/gear/menu/1
execute unless items entity @s container.23 *[custom_data~{gear_button:"next"}] run return run function mainlobby:setting/gear/menu/4
execute unless items entity @s container.26 *[custom_data~{gear_button:"close"}] run return run function mainlobby:setting/gear/kill
execute store result score #count gear.count run data get entity @s Items
execute unless score @s gear.count = #count gear.count run function mainlobby:setting/gear/menu/3

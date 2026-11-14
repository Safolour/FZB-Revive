# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
execute unless items entity @s container.0 *[custom_data~{gear_button:"gun_golddigger"}] run return run function mainlobby:setting/gear/give/gun_golddigger
execute unless items entity @s container.1 *[custom_data~{gear_button:"gun_ultimategolddigger"}] run return run function mainlobby:setting/gear/give/gun_ultimategolddigger
execute unless items entity @s container.2 *[custom_data~{gear_button:"gun_ultimategolddiggerii"}] run return run function mainlobby:setting/gear/give/gun_ultimategolddiggerii
execute unless items entity @s container.3 *[custom_data~{gear_button:"gun_ultimategolddiggeriii"}] run return run function mainlobby:setting/gear/give/gun_ultimategolddiggeriii
execute unless items entity @s container.4 *[custom_data~{gear_button:"gun_ultimategolddiggeriv"}] run return run function mainlobby:setting/gear/give/gun_ultimategolddiggeriv
execute unless items entity @s container.5 *[custom_data~{gear_button:"gun_ultimategolddiggerv"}] run return run function mainlobby:setting/gear/give/gun_ultimategolddiggerv
execute unless items entity @s container.18 *[custom_data~{gear_button:"back"}] run return run function mainlobby:setting/gear/menu/3
execute unless items entity @s container.26 *[custom_data~{gear_button:"close"}] run return run function mainlobby:setting/gear/kill
execute store result score #count gear.count run data get entity @s Items
execute unless score @s gear.count = #count gear.count run function mainlobby:setting/gear/menu/109

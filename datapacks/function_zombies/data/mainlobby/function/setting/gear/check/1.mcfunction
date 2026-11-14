# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
execute unless items entity @s container.2 *[custom_data~{gear_button:"melee"}] run return run function mainlobby:setting/gear/menu/2
execute unless items entity @s container.4 *[custom_data~{gear_button:"gun"}] run return run function mainlobby:setting/gear/menu/3
execute unless items entity @s container.6 *[custom_data~{gear_button:"skill"}] run return run function mainlobby:setting/gear/menu/10
execute unless items entity @s container.11 *[custom_data~{gear_button:"armor"}] run return run function mainlobby:setting/gear/menu/13
execute unless items entity @s container.13 *[custom_data~{gear_button:"perk"}] run return run function mainlobby:setting/gear/menu/11
execute unless items entity @s container.15 *[custom_data~{gear_button:"powerup"}] run return run function mainlobby:setting/gear/menu/14
execute unless items entity @s container.26 *[custom_data~{gear_button:"close"}] run return run function mainlobby:setting/gear/kill
execute store result score #count gear.count run data get entity @s Items
execute unless score @s gear.count = #count gear.count run function mainlobby:setting/gear/menu/1

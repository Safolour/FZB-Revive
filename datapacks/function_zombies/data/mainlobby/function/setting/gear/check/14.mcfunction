# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
execute unless items entity @s container.0 *[custom_data~{gear_button:"powerup_maxammo"}] run return run function mainlobby:setting/gear/give/powerup_maxammo
execute unless items entity @s container.1 *[custom_data~{gear_button:"powerup_instakill"}] run return run function mainlobby:setting/gear/give/powerup_instakill
execute unless items entity @s container.2 *[custom_data~{gear_button:"powerup_doublegold"}] run return run function mainlobby:setting/gear/give/powerup_doublegold
execute unless items entity @s container.3 *[custom_data~{gear_button:"powerup_triplegold"}] run return run function mainlobby:setting/gear/give/powerup_triplegold
execute unless items entity @s container.4 *[custom_data~{gear_button:"powerup_quadruplegold"}] run return run function mainlobby:setting/gear/give/powerup_quadruplegold
execute unless items entity @s container.5 *[custom_data~{gear_button:"powerup_bonusgold"}] run return run function mainlobby:setting/gear/give/powerup_bonusgold
execute unless items entity @s container.6 *[custom_data~{gear_button:"powerup_shoppingspree"}] run return run function mainlobby:setting/gear/give/powerup_shoppingspree
execute unless items entity @s container.7 *[custom_data~{gear_button:"powerup_carpenter"}] run return run function mainlobby:setting/gear/give/powerup_carpenter
execute unless items entity @s container.8 *[custom_data~{gear_button:"powerup_purification"}] run return run function mainlobby:setting/gear/give/powerup_purification
execute unless items entity @s container.18 *[custom_data~{gear_button:"back"}] run return run function mainlobby:setting/gear/menu/1
execute unless items entity @s container.26 *[custom_data~{gear_button:"close"}] run return run function mainlobby:setting/gear/kill
execute store result score #count gear.count run data get entity @s Items
execute unless score @s gear.count = #count gear.count run function mainlobby:setting/gear/menu/14

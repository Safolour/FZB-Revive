# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
execute unless items entity @s container.0 *[custom_data~{gear_button:"melee_puncher"}] run return run function mainlobby:setting/gear/give/melee_puncher
execute unless items entity @s container.1 *[custom_data~{gear_button:"melee_ultimatepuncher"}] run return run function mainlobby:setting/gear/give/melee_ultimatepuncher
execute unless items entity @s container.18 *[custom_data~{gear_button:"back"}] run return run function mainlobby:setting/gear/menu/2
execute unless items entity @s container.26 *[custom_data~{gear_button:"close"}] run return run function mainlobby:setting/gear/kill
execute store result score #count gear.count run data get entity @s Items
execute unless score @s gear.count = #count gear.count run function mainlobby:setting/gear/menu/132

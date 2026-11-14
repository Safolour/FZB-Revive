# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
execute unless items entity @s container.0 *[custom_data~{gear_button:"skill_lightningrod"}] run return run function mainlobby:setting/gear/give/skill_lightningrod
execute unless items entity @s container.1 *[custom_data~{gear_button:"skill_heal"}] run return run function mainlobby:setting/gear/give/skill_heal
execute unless items entity @s container.2 *[custom_data~{gear_button:"skill_gyrokineticwand"}] run return run function mainlobby:setting/gear/give/skill_gyrokineticwand
execute unless items entity @s container.3 *[custom_data~{gear_button:"skill_echo"}] run return run function mainlobby:setting/gear/give/skill_echo
execute unless items entity @s container.18 *[custom_data~{gear_button:"back"}] run return run function mainlobby:setting/gear/menu/1
execute unless items entity @s container.26 *[custom_data~{gear_button:"close"}] run return run function mainlobby:setting/gear/kill
execute store result score #count gear.count run data get entity @s Items
execute unless score @s gear.count = #count gear.count run function mainlobby:setting/gear/menu/10

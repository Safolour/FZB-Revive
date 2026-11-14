# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
# 当前手持枪时替换其槽位；否则优先空槽 1..3，满时替换槽 1。
execute unless items entity @s container.3 * run data modify storage mainlobby:setting_gear grant.slot set value 3
execute if items entity @s container.3 *[custom_data~{tag:["slot"]}] run data modify storage mainlobby:setting_gear grant.slot set value 3
execute unless items entity @s container.2 * run data modify storage mainlobby:setting_gear grant.slot set value 2
execute if items entity @s container.2 *[custom_data~{tag:["slot"]}] run data modify storage mainlobby:setting_gear grant.slot set value 2
execute unless items entity @s container.1 * run data modify storage mainlobby:setting_gear grant.slot set value 1
execute if items entity @s container.1 *[custom_data~{tag:["slot"]}] run data modify storage mainlobby:setting_gear grant.slot set value 1
execute if items entity @s weapon.mainhand *[custom_data~{tag:["gun"]}] store result storage mainlobby:setting_gear grant.slot int 1 run data get entity @s SelectedItemSlot

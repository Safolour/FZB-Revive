# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
# 手持增益时替换真实手持槽；否则沿用同种或空的 6..8 号增益槽。
execute unless items entity @s container.8 * run data modify storage mainlobby:setting_gear grant.slot set value 8
execute unless items entity @s container.7 * run data modify storage mainlobby:setting_gear grant.slot set value 7
execute unless items entity @s container.6 * run data modify storage mainlobby:setting_gear grant.slot set value 6
execute if items entity @s container.8 *[custom_data~{tag:["perk_slot"]}] run data modify storage mainlobby:setting_gear grant.slot set value 8
execute if items entity @s container.7 *[custom_data~{tag:["perk_slot"]}] run data modify storage mainlobby:setting_gear grant.slot set value 7
execute if items entity @s container.6 *[custom_data~{tag:["perk_slot"]}] run data modify storage mainlobby:setting_gear grant.slot set value 6
$execute if items entity @s container.8 *[custom_data~{perk:"$(perk)"}] run data modify storage mainlobby:setting_gear grant.slot set value 8
$execute if items entity @s container.7 *[custom_data~{perk:"$(perk)"}] run data modify storage mainlobby:setting_gear grant.slot set value 7
$execute if items entity @s container.6 *[custom_data~{perk:"$(perk)"}] run data modify storage mainlobby:setting_gear grant.slot set value 6
execute if items entity @s weapon.mainhand *[custom_data~{tag:["perk"]}] store result storage mainlobby:setting_gear grant.slot int 1 run data get entity @s SelectedItemSlot

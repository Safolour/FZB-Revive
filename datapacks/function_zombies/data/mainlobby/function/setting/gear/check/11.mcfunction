# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
execute unless items entity @s container.0 *[custom_data~{gear_button:"perk_absorptionconversion"}] run return run function mainlobby:setting/gear/give/perk_absorptionconversion
execute unless items entity @s container.1 *[custom_data~{gear_button:"perk_ashes_bullet"}] run return run function mainlobby:setting/gear/give/perk_ashes_bullet
execute unless items entity @s container.2 *[custom_data~{gear_button:"perk_double_bullet"}] run return run function mainlobby:setting/gear/give/perk_double_bullet
execute unless items entity @s container.3 *[custom_data~{gear_button:"perk_extra_health"}] run return run function mainlobby:setting/gear/menu/133
execute unless items entity @s container.4 *[custom_data~{gear_button:"perk_fast_regeneration"}] run return run function mainlobby:setting/gear/give/perk_fast_regeneration
execute unless items entity @s container.5 *[custom_data~{gear_button:"perk_fast_revive"}] run return run function mainlobby:setting/gear/give/perk_fast_revive
execute unless items entity @s container.6 *[custom_data~{gear_button:"perk_flame_bullet"}] run return run function mainlobby:setting/gear/give/perk_flame_bullet
execute unless items entity @s container.7 *[custom_data~{gear_button:"perk_frozen_bullet"}] run return run function mainlobby:setting/gear/give/perk_frozen_bullet
execute unless items entity @s container.8 *[custom_data~{gear_button:"perk_gold_thrower"}] run return run function mainlobby:setting/gear/give/perk_gold_thrower
execute unless items entity @s container.9 *[custom_data~{gear_button:"perk_gravity_bullet"}] run return run function mainlobby:setting/gear/give/perk_gravity_bullet
execute unless items entity @s container.10 *[custom_data~{gear_button:"perk_lightning_bullet"}] run return run function mainlobby:setting/gear/give/perk_lightning_bullet
execute unless items entity @s container.11 *[custom_data~{gear_button:"perk_magnetic_bullet"}] run return run function mainlobby:setting/gear/give/perk_magnetic_bullet
execute unless items entity @s container.12 *[custom_data~{gear_button:"perk_neutralization_bullet"}] run return run function mainlobby:setting/gear/give/perk_neutralization_bullet
execute unless items entity @s container.13 *[custom_data~{gear_button:"perk_no_knockback"}] run return run function mainlobby:setting/gear/give/perk_no_knockback
execute unless items entity @s container.14 *[custom_data~{gear_button:"perk_quick_fire"}] run return run function mainlobby:setting/gear/give/perk_quick_fire
execute unless items entity @s container.15 *[custom_data~{gear_button:"perk_selfexplosion"}] run return run function mainlobby:setting/gear/give/perk_selfexplosion
execute unless items entity @s container.16 *[custom_data~{gear_button:"perk_speed"}] run return run function mainlobby:setting/gear/give/perk_speed
execute unless items entity @s container.18 *[custom_data~{gear_button:"back"}] run return run function mainlobby:setting/gear/menu/1
execute unless items entity @s container.26 *[custom_data~{gear_button:"close"}] run return run function mainlobby:setting/gear/kill
execute store result score #count gear.count run data get entity @s Items
execute unless score @s gear.count = #count gear.count run function mainlobby:setting/gear/menu/11

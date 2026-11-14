# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
# Match combat inventory rules: only empty hotbar slots 0..8 survive unnecessaryslot cleanup.
# Never overwrite a weapon, skill, perk, armor or offhand item.
execute unless items entity @s container.8 * run scoreboard players set #gear_dest gear.count 8
execute unless items entity @s container.7 * run scoreboard players set #gear_dest gear.count 7
execute unless items entity @s container.6 * run scoreboard players set #gear_dest gear.count 6
execute unless items entity @s container.5 * run scoreboard players set #gear_dest gear.count 5
execute unless items entity @s container.4 * run scoreboard players set #gear_dest gear.count 4
execute unless items entity @s container.3 * run scoreboard players set #gear_dest gear.count 3
execute unless items entity @s container.2 * run scoreboard players set #gear_dest gear.count 2
execute unless items entity @s container.1 * run scoreboard players set #gear_dest gear.count 1
execute unless items entity @s container.0 * run scoreboard players set #gear_dest gear.count 0

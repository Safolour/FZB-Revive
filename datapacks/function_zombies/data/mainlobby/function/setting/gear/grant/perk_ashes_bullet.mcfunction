# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
clear @s *[custom_data~{tag:["setting_gear"]}]
execute unless score @s system.room matches 2 run return fail
data modify storage mainlobby:setting_gear grant set value {slot:-1}
function mainlobby:setting/gear/perk_slot {perk:ashes_bullet}
execute if data storage mainlobby:setting_gear grant{slot:-1} run return run tellraw @s [{"text":"[装备领取] ","color":"gold","bold":true},{"text":"手持要替换的增益，再选择新的增益。","color":"red","bold":false}]
scoreboard players set @s inventory 2
function map:shop/_get_item/perk/ashes_bullet0 with storage mainlobby:setting_gear grant
execute unless score @s perk.absorptionconversion matches -2147483648.. run scoreboard players set @s perk.absorptionconversion 0
execute unless score @s perk.ashes_bullet matches -2147483648.. run scoreboard players set @s perk.ashes_bullet 0
execute unless score @s perk.double_bullet matches -2147483648.. run scoreboard players set @s perk.double_bullet 0
execute unless score @s perk.extra_health matches -2147483648.. run scoreboard players set @s perk.extra_health 0
execute unless score @s perk.fast_regeneration matches -2147483648.. run scoreboard players set @s perk.fast_regeneration 0
execute unless score @s perk.fast_revive matches -2147483648.. run scoreboard players set @s perk.fast_revive 0
execute unless score @s perk.flame_bullet matches -2147483648.. run scoreboard players set @s perk.flame_bullet 0
execute unless score @s perk.frozen_bullet matches -2147483648.. run scoreboard players set @s perk.frozen_bullet 0
execute unless score @s perk.gold_thrower matches -2147483648.. run scoreboard players set @s perk.gold_thrower 0
execute unless score @s perk.gravity_bullet matches -2147483648.. run scoreboard players set @s perk.gravity_bullet 0
execute unless score @s perk.lightning_bullet matches -2147483648.. run scoreboard players set @s perk.lightning_bullet 0
execute unless score @s perk.magnetic_bullet matches -2147483648.. run scoreboard players set @s perk.magnetic_bullet 0
execute unless score @s perk.neutralization_bullet matches -2147483648.. run scoreboard players set @s perk.neutralization_bullet 0
execute unless score @s perk.no_knockback matches -2147483648.. run scoreboard players set @s perk.no_knockback 0
execute unless score @s perk.quick_fire matches -2147483648.. run scoreboard players set @s perk.quick_fire 0
execute unless score @s perk.selfexplosion matches -2147483648.. run scoreboard players set @s perk.selfexplosion 0
execute unless score @s perk.speed matches -2147483648.. run scoreboard players set @s perk.speed 0
scoreboard players set @s inventory 1
function map:perk/inventory_check
function inventory:item_store
data remove storage mainlobby:setting_gear grant
playsound block.note_block.pling ambient @s ~ ~ ~ 0.6 1.5

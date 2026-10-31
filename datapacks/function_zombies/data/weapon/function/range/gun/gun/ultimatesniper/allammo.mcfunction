
scoreboard players operation @s weapon.gun_ultimatesniper_ammo = ammo weapon.gun_ultimatesniper
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimatesniper_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimatesniper_clip_ammo = clip_ammo weapon.gun_ultimatesniper
scoreboard players set @s weapon.gun_ultimatesniper_rate 0
scoreboard players set @s weapon.gun_ultimatesniper_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimatesniper"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatesniper"}
execute if items entity @s container.* *[custom_data~{tag:["ultimatesniper"]}] run function weapon:range/gun/slot/count {gun:"ultimatesniper"}
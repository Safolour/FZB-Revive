
scoreboard players operation @s weapon.gun_ultimatezapper_ammo = ammo weapon.gun_ultimatezapper
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimatezapper_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimatezapper_clip_ammo = clip_ammo weapon.gun_ultimatezapper
scoreboard players set @s weapon.gun_ultimatezapper_rate 0
scoreboard players set @s weapon.gun_ultimatezapper_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimatezapper"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatezapper"}
execute if items entity @s container.* *[custom_data~{tag:["ultimatezapper"]}] run function weapon:range/gun/slot/count {gun:"ultimatezapper"}
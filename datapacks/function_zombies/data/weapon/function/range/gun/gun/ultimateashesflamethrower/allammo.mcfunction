
scoreboard players operation @s weapon.gun_ultimateashesflamethrower_ammo = ammo weapon.gun_ultimateashesflamethrower
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimateashesflamethrower_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimateashesflamethrower_clip_ammo = clip_ammo weapon.gun_ultimateashesflamethrower
scoreboard players set @s weapon.gun_ultimateashesflamethrower_rate 0
scoreboard players set @s weapon.gun_ultimateashesflamethrower_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimateashesflamethrower"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimateashesflamethrower"}
execute if items entity @s container.* *[custom_data~{tag:["ultimateashesflamethrower"]}] run function weapon:range/gun/slot/count {gun:"ultimateashesflamethrower"}
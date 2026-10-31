
scoreboard players operation @s weapon.gun_ashesflamethrower_ammo = ammo weapon.gun_ashesflamethrower
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ashesflamethrower_ammo *= 2 number
scoreboard players operation @s weapon.gun_ashesflamethrower_clip_ammo = clip_ammo weapon.gun_ashesflamethrower
scoreboard players set @s weapon.gun_ashesflamethrower_rate 0
scoreboard players set @s weapon.gun_ashesflamethrower_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ashesflamethrower"]}] run function weapon:range/gun/slot/xp_lv {gun:"ashesflamethrower"}
execute if items entity @s container.* *[custom_data~{tag:["ashesflamethrower"]}] run function weapon:range/gun/slot/count {gun:"ashesflamethrower"}
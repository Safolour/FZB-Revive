
scoreboard players operation @s weapon.gun_ultimateflamethrower_ammo = ammo weapon.gun_ultimateflamethrower
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimateflamethrower_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimateflamethrower_clip_ammo = clip_ammo weapon.gun_ultimateflamethrower
scoreboard players set @s weapon.gun_ultimateflamethrower_rate 0
scoreboard players set @s weapon.gun_ultimateflamethrower_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimateflamethrower"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimateflamethrower"}
execute if items entity @s container.* *[custom_data~{tag:["ultimateflamethrower"]}] run function weapon:range/gun/slot/count {gun:"ultimateflamethrower"}
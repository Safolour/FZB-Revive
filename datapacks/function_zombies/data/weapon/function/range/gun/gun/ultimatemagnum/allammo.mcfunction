
scoreboard players operation @s weapon.gun_ultimatemagnum_ammo = ammo weapon.gun_ultimatemagnum
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimatemagnum_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimatemagnum_clip_ammo = clip_ammo weapon.gun_ultimatemagnum
scoreboard players set @s weapon.gun_ultimatemagnum_rate 0
scoreboard players set @s weapon.gun_ultimatemagnum_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimatemagnum"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatemagnum"}
execute if items entity @s container.* *[custom_data~{tag:["ultimatemagnum"]}] run function weapon:range/gun/slot/count {gun:"ultimatemagnum"}
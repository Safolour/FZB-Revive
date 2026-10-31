
scoreboard players operation @s weapon.gun_ultimaterifle_ammo = ammo weapon.gun_ultimaterifle
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimaterifle_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimaterifle_clip_ammo = clip_ammo weapon.gun_ultimaterifle
scoreboard players set @s weapon.gun_ultimaterifle_rate 0
scoreboard players set @s weapon.gun_ultimaterifle_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimaterifle"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimaterifle"}
execute if items entity @s container.* *[custom_data~{tag:["ultimaterifle"]}] run function weapon:range/gun/slot/count {gun:"ultimaterifle"}
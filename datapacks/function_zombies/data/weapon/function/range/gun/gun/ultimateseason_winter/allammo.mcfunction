scoreboard players operation @s weapon.gun_ultimateseason_winter_ammo = ammo weapon.gun_ultimateseason_winter
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimateseason_winter_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimateseason_winter_clip_ammo = clip_ammo weapon.gun_ultimateseason_winter
scoreboard players set @s weapon.gun_ultimateseason_winter_rate 0
scoreboard players set @s weapon.gun_ultimateseason_winter_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimateseason_winter"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimateseason_winter"}
execute if items entity @s container.* *[custom_data~{tag:["ultimateseason_winter"]}] run function weapon:range/gun/slot/count {gun:"ultimateseason_winter"}

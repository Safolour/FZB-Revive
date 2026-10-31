
scoreboard players operation @s weapon.gun_ultimategolddiggerv_ammo = ammo weapon.gun_ultimategolddiggerv
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimategolddiggerv_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimategolddiggerv_clip_ammo = clip_ammo weapon.gun_ultimategolddiggerv
scoreboard players set @s weapon.gun_ultimategolddiggerv_rate 0
scoreboard players set @s weapon.gun_ultimategolddiggerv_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimategolddiggerv"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimategolddiggerv"}
execute if items entity @s container.* *[custom_data~{tag:["ultimategolddiggerv"]}] run function weapon:range/gun/slot/count {gun:"ultimategolddiggerv"}
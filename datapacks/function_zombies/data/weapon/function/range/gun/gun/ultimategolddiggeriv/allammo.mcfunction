
scoreboard players operation @s weapon.gun_ultimategolddiggeriv_ammo = ammo weapon.gun_ultimategolddiggeriv
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimategolddiggeriv_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimategolddiggeriv_clip_ammo = clip_ammo weapon.gun_ultimategolddiggeriv
scoreboard players set @s weapon.gun_ultimategolddiggeriv_rate 0
scoreboard players set @s weapon.gun_ultimategolddiggeriv_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimategolddiggeriv"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimategolddiggeriv"}
execute if items entity @s container.* *[custom_data~{tag:["ultimategolddiggeriv"]}] run function weapon:range/gun/slot/count {gun:"ultimategolddiggeriv"}
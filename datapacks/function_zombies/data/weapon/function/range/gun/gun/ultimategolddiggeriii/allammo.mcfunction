
scoreboard players operation @s weapon.gun_ultimategolddiggeriii_ammo = ammo weapon.gun_ultimategolddiggeriii
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimategolddiggeriii_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimategolddiggeriii_clip_ammo = clip_ammo weapon.gun_ultimategolddiggeriii
scoreboard players set @s weapon.gun_ultimategolddiggeriii_rate 0
scoreboard players set @s weapon.gun_ultimategolddiggeriii_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimategolddiggeriii"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimategolddiggeriii"}
execute if items entity @s container.* *[custom_data~{tag:["ultimategolddiggeriii"]}] run function weapon:range/gun/slot/count {gun:"ultimategolddiggeriii"}
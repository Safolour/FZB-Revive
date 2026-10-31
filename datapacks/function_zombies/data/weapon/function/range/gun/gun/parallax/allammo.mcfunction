scoreboard players operation @s weapon.gun_parallax_ammo = ammo weapon.gun_parallax
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_parallax_ammo *= 2 number
scoreboard players operation @s weapon.gun_parallax_clip_ammo = clip_ammo weapon.gun_parallax
scoreboard players set @s weapon.gun_parallax_rate 0
scoreboard players set @s weapon.gun_parallax_reload 0
execute if items entity @s weapon *[custom_data~{tag:["parallax"]}] run function weapon:range/gun/slot/xp_lv {gun:"parallax"}
execute if items entity @s container.* *[custom_data~{tag:["parallax"]}] run function weapon:range/gun/slot/count {gun:"parallax"}

scoreboard players operation @s weapon.gun_exposedcoppergun_ammo = ammo weapon.gun_exposedcoppergun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_exposedcoppergun_ammo *= 2 number
scoreboard players operation @s weapon.gun_exposedcoppergun_clip_ammo = clip_ammo weapon.gun_exposedcoppergun
scoreboard players set @s weapon.gun_exposedcoppergun_rate 0
scoreboard players set @s weapon.gun_exposedcoppergun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["exposedcoppergun"]}] run function weapon:range/gun/slot/xp_lv {gun:"exposedcoppergun"}
execute if items entity @s container.* *[custom_data~{tag:["exposedcoppergun"]}] run function weapon:range/gun/slot/count {gun:"exposedcoppergun"}

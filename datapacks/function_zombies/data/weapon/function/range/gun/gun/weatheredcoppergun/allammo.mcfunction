scoreboard players operation @s weapon.gun_weatheredcoppergun_ammo = ammo weapon.gun_weatheredcoppergun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_weatheredcoppergun_ammo *= 2 number
scoreboard players operation @s weapon.gun_weatheredcoppergun_clip_ammo = clip_ammo weapon.gun_weatheredcoppergun
scoreboard players set @s weapon.gun_weatheredcoppergun_rate 0
scoreboard players set @s weapon.gun_weatheredcoppergun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["weatheredcoppergun"]}] run function weapon:range/gun/slot/xp_lv {gun:"weatheredcoppergun"}
execute if items entity @s container.* *[custom_data~{tag:["weatheredcoppergun"]}] run function weapon:range/gun/slot/count {gun:"weatheredcoppergun"}

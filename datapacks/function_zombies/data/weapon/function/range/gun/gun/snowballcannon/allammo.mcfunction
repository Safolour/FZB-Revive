
scoreboard players operation @s weapon.gun_snowballcannon_ammo = ammo weapon.gun_snowballcannon
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_snowballcannon_ammo *= 2 number
scoreboard players operation @s weapon.gun_snowballcannon_clip_ammo = clip_ammo weapon.gun_snowballcannon
scoreboard players set @s weapon.gun_snowballcannon_rate 0
scoreboard players set @s weapon.gun_snowballcannon_reload 0
execute if items entity @s weapon *[custom_data~{tag:["snowballcannon"]}] run function weapon:range/gun/slot/xp_lv {gun:"snowballcannon"}
execute if items entity @s container.* *[custom_data~{tag:["snowballcannon"]}] run function weapon:range/gun/slot/count {gun:"snowballcannon"}
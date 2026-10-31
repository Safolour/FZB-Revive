
scoreboard players operation @s weapon.gun_magnum_ammo = ammo weapon.gun_magnum
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_magnum_ammo *= 2 number
scoreboard players operation @s weapon.gun_magnum_clip_ammo = clip_ammo weapon.gun_magnum
scoreboard players set @s weapon.gun_magnum_rate 0
scoreboard players set @s weapon.gun_magnum_reload 0
execute if items entity @s weapon *[custom_data~{tag:["magnum"]}] run function weapon:range/gun/slot/xp_lv {gun:"magnum"}
execute if items entity @s container.* *[custom_data~{tag:["magnum"]}] run function weapon:range/gun/slot/count {gun:"magnum"}
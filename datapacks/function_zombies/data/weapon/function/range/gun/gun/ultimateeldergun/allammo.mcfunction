
scoreboard players operation @s weapon.gun_ultimateeldergun_ammo = ammo weapon.gun_ultimateeldergun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimateeldergun_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimateeldergun_clip_ammo = clip_ammo weapon.gun_ultimateeldergun
scoreboard players set @s weapon.gun_ultimateeldergun_rate 0
scoreboard players set @s weapon.gun_ultimateeldergun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimateeldergun"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimateeldergun"}
execute if items entity @s container.* *[custom_data~{tag:["ultimateeldergun"]}] run function weapon:range/gun/slot/count {gun:"ultimateeldergun"}
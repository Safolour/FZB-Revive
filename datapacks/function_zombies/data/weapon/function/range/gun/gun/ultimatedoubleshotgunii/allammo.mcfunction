
scoreboard players operation @s weapon.gun_ultimatedoubleshotgunii_ammo = ammo weapon.gun_ultimatedoubleshotgunii
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimatedoubleshotgunii_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimatedoubleshotgunii_clip_ammo = clip_ammo weapon.gun_ultimatedoubleshotgunii
scoreboard players set @s weapon.gun_ultimatedoubleshotgunii_rate 0
scoreboard players set @s weapon.gun_ultimatedoubleshotgunii_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimatedoubleshotgunii"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatedoubleshotgunii"}
execute if items entity @s container.* *[custom_data~{tag:["ultimatedoubleshotgunii"]}] run function weapon:range/gun/slot/count {gun:"ultimatedoubleshotgunii"}
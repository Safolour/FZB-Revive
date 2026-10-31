
scoreboard players operation @s weapon.gun_ultimatedoubleshotgun_ammo = ammo weapon.gun_ultimatedoubleshotgun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimatedoubleshotgun_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimatedoubleshotgun_clip_ammo = clip_ammo weapon.gun_ultimatedoubleshotgun
scoreboard players set @s weapon.gun_ultimatedoubleshotgun_rate 0
scoreboard players set @s weapon.gun_ultimatedoubleshotgun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimatedoubleshotgun"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatedoubleshotgun"}
execute if items entity @s container.* *[custom_data~{tag:["ultimatedoubleshotgun"]}] run function weapon:range/gun/slot/count {gun:"ultimatedoubleshotgun"}
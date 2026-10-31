
scoreboard players operation @s weapon.gun_ultimateshotgun_ammo = ammo weapon.gun_ultimateshotgun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimateshotgun_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimateshotgun_clip_ammo = clip_ammo weapon.gun_ultimateshotgun
scoreboard players set @s weapon.gun_ultimateshotgun_rate 0
scoreboard players set @s weapon.gun_ultimateshotgun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimateshotgun"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimateshotgun"}
execute if items entity @s container.* *[custom_data~{tag:["ultimateshotgun"]}] run function weapon:range/gun/slot/count {gun:"ultimateshotgun"}
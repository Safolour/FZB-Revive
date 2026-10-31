
scoreboard players operation @s weapon.gun_eldergun_ammo = ammo weapon.gun_eldergun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_eldergun_ammo *= 2 number
scoreboard players operation @s weapon.gun_eldergun_clip_ammo = clip_ammo weapon.gun_eldergun
scoreboard players set @s weapon.gun_eldergun_rate 0
scoreboard players set @s weapon.gun_eldergun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["eldergun"]}] run function weapon:range/gun/slot/xp_lv {gun:"eldergun"}
execute if items entity @s container.* *[custom_data~{tag:["eldergun"]}] run function weapon:range/gun/slot/count {gun:"eldergun"}
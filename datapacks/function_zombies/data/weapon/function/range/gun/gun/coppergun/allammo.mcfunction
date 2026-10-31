scoreboard players operation @s weapon.gun_coppergun_ammo = ammo weapon.gun_coppergun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_coppergun_ammo *= 2 number
scoreboard players operation @s weapon.gun_coppergun_clip_ammo = clip_ammo weapon.gun_coppergun
scoreboard players set @s weapon.gun_coppergun_rate 0
scoreboard players set @s weapon.gun_coppergun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["coppergun"]}] run function weapon:range/gun/slot/xp_lv {gun:"coppergun"}
execute if items entity @s container.* *[custom_data~{tag:["coppergun"]}] run function weapon:range/gun/slot/count {gun:"coppergun"}

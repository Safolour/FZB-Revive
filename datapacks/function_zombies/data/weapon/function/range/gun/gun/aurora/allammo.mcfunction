scoreboard players operation @s weapon.gun_aurora_ammo = ammo weapon.gun_aurora
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_aurora_ammo *= 2 number
scoreboard players operation @s weapon.gun_aurora_clip_ammo = clip_ammo weapon.gun_aurora
scoreboard players set @s weapon.gun_aurora_rate 0
scoreboard players set @s weapon.gun_aurora_reload 0
execute if items entity @s weapon *[custom_data~{tag:["aurora"]}] run function weapon:range/gun/slot/xp_lv {gun:"aurora"}
execute if items entity @s container.* *[custom_data~{tag:["aurora"]}] run function weapon:range/gun/slot/count {gun:"aurora"}

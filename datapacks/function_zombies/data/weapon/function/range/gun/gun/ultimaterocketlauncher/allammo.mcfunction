
scoreboard players operation @s weapon.gun_ultimaterocketlauncher_ammo = ammo weapon.gun_ultimaterocketlauncher
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimaterocketlauncher_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimaterocketlauncher_clip_ammo = clip_ammo weapon.gun_ultimaterocketlauncher
scoreboard players set @s weapon.gun_ultimaterocketlauncher_rate 0
scoreboard players set @s weapon.gun_ultimaterocketlauncher_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimaterocketlauncher"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimaterocketlauncher"}
execute if items entity @s container.* *[custom_data~{tag:["ultimaterocketlauncher"]}] run function weapon:range/gun/slot/count {gun:"ultimaterocketlauncher"}
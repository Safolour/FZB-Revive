scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncher_ammo = ammo weapon.gun_ultimaterainbowrocketlauncher
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncher_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncher_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrocketlauncher
scoreboard players set @s weapon.gun_ultimaterainbowrocketlauncher_rate 0
scoreboard players set @s weapon.gun_ultimaterainbowrocketlauncher_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimaterainbowrocketlauncher"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowrocketlauncher"}
execute if items entity @s container.* *[custom_data~{tag:["ultimaterainbowrocketlauncher"]}] run function weapon:range/gun/slot/count {gun:"ultimaterainbowrocketlauncher"}

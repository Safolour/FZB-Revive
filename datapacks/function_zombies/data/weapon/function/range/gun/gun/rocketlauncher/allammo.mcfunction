
scoreboard players operation @s weapon.gun_rocketlauncher_ammo = ammo weapon.gun_rocketlauncher
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_rocketlauncher_ammo *= 2 number
scoreboard players operation @s weapon.gun_rocketlauncher_clip_ammo = clip_ammo weapon.gun_rocketlauncher
scoreboard players set @s weapon.gun_rocketlauncher_rate 0
scoreboard players set @s weapon.gun_rocketlauncher_reload 0
execute if items entity @s weapon *[custom_data~{tag:["rocketlauncher"]}] run function weapon:range/gun/slot/xp_lv {gun:"rocketlauncher"}
execute if items entity @s container.* *[custom_data~{tag:["rocketlauncher"]}] run function weapon:range/gun/slot/count {gun:"rocketlauncher"}
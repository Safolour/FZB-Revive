scoreboard players operation @s weapon.gun_rainbowrocketlauncher_ammo = ammo weapon.gun_rainbowrocketlauncher
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_rainbowrocketlauncher_ammo *= 2 number
scoreboard players operation @s weapon.gun_rainbowrocketlauncher_clip_ammo = clip_ammo weapon.gun_rainbowrocketlauncher
scoreboard players set @s weapon.gun_rainbowrocketlauncher_rate 0
scoreboard players set @s weapon.gun_rainbowrocketlauncher_reload 0
execute if items entity @s weapon *[custom_data~{tag:["rainbowrocketlauncher"]}] run function weapon:range/gun/slot/xp_lv {gun:"rainbowrocketlauncher"}
execute if items entity @s container.* *[custom_data~{tag:["rainbowrocketlauncher"]}] run function weapon:range/gun/slot/count {gun:"rainbowrocketlauncher"}

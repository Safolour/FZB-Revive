
scoreboard players operation @s weapon.gun_rainbowrifle_ammo = ammo weapon.gun_rainbowrifle
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_rainbowrifle_ammo *= 2 number
scoreboard players operation @s weapon.gun_rainbowrifle_clip_ammo = clip_ammo weapon.gun_rainbowrifle
scoreboard players set @s weapon.gun_rainbowrifle_rate 0
scoreboard players set @s weapon.gun_rainbowrifle_reload 0
execute if items entity @s weapon *[custom_data~{tag:["rainbowrifle"]}] run function weapon:range/gun/slot/xp_lv {gun:"rainbowrifle"}
execute if items entity @s container.* *[custom_data~{tag:["rainbowrifle"]}] run function weapon:range/gun/slot/count {gun:"rainbowrifle"}
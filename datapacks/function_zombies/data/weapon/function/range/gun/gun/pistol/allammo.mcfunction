
scoreboard players operation @s weapon.gun_pistol_ammo = ammo weapon.gun_pistol
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_pistol_ammo *= 2 number
scoreboard players operation @s weapon.gun_pistol_clip_ammo = clip_ammo weapon.gun_pistol
scoreboard players set @s weapon.gun_pistol_rate 0
scoreboard players set @s weapon.gun_pistol_reload 0
execute if items entity @s weapon *[custom_data~{tag:["pistol"]}] run function weapon:range/gun/slot/xp_lv {gun:"pistol"}
execute if items entity @s container.* *[custom_data~{tag:["pistol"]}] run function weapon:range/gun/slot/count {gun:"pistol"}
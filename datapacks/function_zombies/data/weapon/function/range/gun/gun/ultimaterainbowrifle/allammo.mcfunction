
scoreboard players operation @s weapon.gun_ultimaterainbowrifle_ammo = ammo weapon.gun_ultimaterainbowrifle
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimaterainbowrifle_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimaterainbowrifle_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrifle
scoreboard players set @s weapon.gun_ultimaterainbowrifle_rate 0
scoreboard players set @s weapon.gun_ultimaterainbowrifle_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimaterainbowrifle"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowrifle"}
execute if items entity @s container.* *[custom_data~{tag:["ultimaterainbowrifle"]}] run function weapon:range/gun/slot/count {gun:"ultimaterainbowrifle"}
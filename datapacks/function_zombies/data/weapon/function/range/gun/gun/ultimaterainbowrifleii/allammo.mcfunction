
scoreboard players operation @s weapon.gun_ultimaterainbowrifleii_ammo = ammo weapon.gun_ultimaterainbowrifleii
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimaterainbowrifleii_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimaterainbowrifleii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrifleii
scoreboard players set @s weapon.gun_ultimaterainbowrifleii_rate 0
scoreboard players set @s weapon.gun_ultimaterainbowrifleii_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimaterainbowrifleii"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowrifleii"}
execute if items entity @s container.* *[custom_data~{tag:["ultimaterainbowrifleii"]}] run function weapon:range/gun/slot/count {gun:"ultimaterainbowrifleii"}
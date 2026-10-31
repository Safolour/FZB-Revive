
scoreboard players operation @s weapon.gun_ultimaterainbowrifleiii_ammo = ammo weapon.gun_ultimaterainbowrifleiii
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimaterainbowrifleiii_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimaterainbowrifleiii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrifleiii
scoreboard players set @s weapon.gun_ultimaterainbowrifleiii_rate 0
scoreboard players set @s weapon.gun_ultimaterainbowrifleiii_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimaterainbowrifleiii"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowrifleiii"}
execute if items entity @s container.* *[custom_data~{tag:["ultimaterainbowrifleiii"]}] run function weapon:range/gun/slot/count {gun:"ultimaterainbowrifleiii"}
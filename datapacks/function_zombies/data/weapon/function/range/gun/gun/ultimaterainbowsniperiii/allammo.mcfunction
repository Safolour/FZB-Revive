
scoreboard players operation @s weapon.gun_ultimaterainbowsniperiii_ammo = ammo weapon.gun_ultimaterainbowsniperiii
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimaterainbowsniperiii_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimaterainbowsniperiii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowsniperiii
scoreboard players set @s weapon.gun_ultimaterainbowsniperiii_rate 0
scoreboard players set @s weapon.gun_ultimaterainbowsniperiii_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimaterainbowsniperiii"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowsniperiii"}
execute if items entity @s container.* *[custom_data~{tag:["ultimaterainbowsniperiii"]}] run function weapon:range/gun/slot/count {gun:"ultimaterainbowsniperiii"}
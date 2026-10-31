scoreboard players operation @s weapon.gun_ultimaterainbowshotguniii_ammo = ammo weapon.gun_ultimaterainbowshotguniii
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimaterainbowshotguniii_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimaterainbowshotguniii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowshotguniii
scoreboard players set @s weapon.gun_ultimaterainbowshotguniii_rate 0
scoreboard players set @s weapon.gun_ultimaterainbowshotguniii_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimaterainbowshotguniii"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowshotguniii"}
execute if items entity @s container.* *[custom_data~{tag:["ultimaterainbowshotguniii"]}] run function weapon:range/gun/slot/count {gun:"ultimaterainbowshotguniii"}

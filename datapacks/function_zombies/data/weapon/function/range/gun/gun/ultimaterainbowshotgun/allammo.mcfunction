scoreboard players operation @s weapon.gun_ultimaterainbowshotgun_ammo = ammo weapon.gun_ultimaterainbowshotgun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimaterainbowshotgun_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimaterainbowshotgun_clip_ammo = clip_ammo weapon.gun_ultimaterainbowshotgun
scoreboard players set @s weapon.gun_ultimaterainbowshotgun_rate 0
scoreboard players set @s weapon.gun_ultimaterainbowshotgun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimaterainbowshotgun"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowshotgun"}
execute if items entity @s container.* *[custom_data~{tag:["ultimaterainbowshotgun"]}] run function weapon:range/gun/slot/count {gun:"ultimaterainbowshotgun"}


scoreboard players operation @s weapon.gun_ultimaterainbowsniperii_ammo = ammo weapon.gun_ultimaterainbowsniperii
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimaterainbowsniperii_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimaterainbowsniperii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowsniperii
scoreboard players set @s weapon.gun_ultimaterainbowsniperii_rate 0
scoreboard players set @s weapon.gun_ultimaterainbowsniperii_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimaterainbowsniperii"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowsniperii"}
execute if items entity @s container.* *[custom_data~{tag:["ultimaterainbowsniperii"]}] run function weapon:range/gun/slot/count {gun:"ultimaterainbowsniperii"}
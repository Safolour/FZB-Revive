scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncherii_ammo = ammo weapon.gun_ultimaterainbowrocketlauncherii
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncherii_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncherii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrocketlauncherii
scoreboard players set @s weapon.gun_ultimaterainbowrocketlauncherii_rate 0
scoreboard players set @s weapon.gun_ultimaterainbowrocketlauncherii_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimaterainbowrocketlauncherii"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowrocketlauncherii"}
execute if items entity @s container.* *[custom_data~{tag:["ultimaterainbowrocketlauncherii"]}] run function weapon:range/gun/slot/count {gun:"ultimaterainbowrocketlauncherii"}


scoreboard players operation @s weapon.gun_ultimatedoubleshotguniii_ammo = ammo weapon.gun_ultimatedoubleshotguniii
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimatedoubleshotguniii_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimatedoubleshotguniii_clip_ammo = clip_ammo weapon.gun_ultimatedoubleshotguniii
scoreboard players set @s weapon.gun_ultimatedoubleshotguniii_rate 0
scoreboard players set @s weapon.gun_ultimatedoubleshotguniii_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimatedoubleshotguniii"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatedoubleshotguniii"}
execute if items entity @s container.* *[custom_data~{tag:["ultimatedoubleshotguniii"]}] run function weapon:range/gun/slot/count {gun:"ultimatedoubleshotguniii"}
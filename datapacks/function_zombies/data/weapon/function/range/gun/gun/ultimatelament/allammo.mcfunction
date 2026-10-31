scoreboard players operation @s weapon.gun_ultimatelament_ammo = ammo weapon.gun_ultimatelament
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimatelament_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimatelament_clip_ammo = clip_ammo weapon.gun_ultimatelament
scoreboard players set @s weapon.gun_ultimatelament_rate 0
scoreboard players set @s weapon.gun_ultimatelament_reload 0
scoreboard players set @s weapon.gun_ultimatelament_heal -1
scoreboard players set @s weapon.gun_ultimatelament_hit 0
execute if items entity @s weapon *[custom_data~{tag:["ultimatelament"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatelament"}
execute if items entity @s container.* *[custom_data~{tag:["ultimatelament"]}] run function weapon:range/gun/slot/count {gun:"ultimatelament"}

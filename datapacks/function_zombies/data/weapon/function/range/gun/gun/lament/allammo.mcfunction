scoreboard players operation @s weapon.gun_lament_ammo = ammo weapon.gun_lament
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_lament_ammo *= 2 number
scoreboard players operation @s weapon.gun_lament_clip_ammo = clip_ammo weapon.gun_lament
scoreboard players set @s weapon.gun_lament_rate 0
scoreboard players set @s weapon.gun_lament_reload 0
scoreboard players set @s weapon.gun_lament_heal -1
scoreboard players set @s weapon.gun_lament_hit 0
execute if items entity @s weapon *[custom_data~{tag:["lament"]}] run function weapon:range/gun/slot/xp_lv {gun:"lament"}
execute if items entity @s container.* *[custom_data~{tag:["lament"]}] run function weapon:range/gun/slot/count {gun:"lament"}

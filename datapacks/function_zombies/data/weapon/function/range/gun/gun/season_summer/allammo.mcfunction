scoreboard players operation @s weapon.gun_season_summer_ammo = ammo weapon.gun_season_summer
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_season_summer_ammo *= 2 number
scoreboard players operation @s weapon.gun_season_summer_clip_ammo = clip_ammo weapon.gun_season_summer
scoreboard players set @s weapon.gun_season_summer_rate 0
scoreboard players set @s weapon.gun_season_summer_reload 0
execute if items entity @s weapon *[custom_data~{tag:["season_summer"]}] run function weapon:range/gun/slot/xp_lv {gun:"season_summer"}
execute if items entity @s container.* *[custom_data~{tag:["season_summer"]}] run function weapon:range/gun/slot/count {gun:"season_summer"}

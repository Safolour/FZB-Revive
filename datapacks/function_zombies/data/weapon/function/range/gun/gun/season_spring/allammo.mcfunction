scoreboard players operation @s weapon.gun_season_spring_ammo = ammo weapon.gun_season_spring
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_season_spring_ammo *= 2 number
scoreboard players operation @s weapon.gun_season_spring_clip_ammo = clip_ammo weapon.gun_season_spring
scoreboard players set @s weapon.gun_season_spring_rate 0
scoreboard players set @s weapon.gun_season_spring_reload 0
execute if items entity @s weapon *[custom_data~{tag:["season_spring"]}] run function weapon:range/gun/slot/xp_lv {gun:"season_spring"}
execute if items entity @s container.* *[custom_data~{tag:["season_spring"]}] run function weapon:range/gun/slot/count {gun:"season_spring"}

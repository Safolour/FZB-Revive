
scoreboard players operation @s weapon.gun_sniper_ammo = ammo weapon.gun_sniper
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_sniper_ammo *= 2 number
scoreboard players operation @s weapon.gun_sniper_clip_ammo = clip_ammo weapon.gun_sniper
scoreboard players set @s weapon.gun_sniper_rate 0
scoreboard players set @s weapon.gun_sniper_reload 0
execute if items entity @s weapon *[custom_data~{tag:["sniper"]}] run function weapon:range/gun/slot/xp_lv {gun:"sniper"}
execute if items entity @s container.* *[custom_data~{tag:["sniper"]}] run function weapon:range/gun/slot/count {gun:"sniper"}
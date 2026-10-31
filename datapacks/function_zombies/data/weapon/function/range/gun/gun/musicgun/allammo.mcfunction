
scoreboard players operation @s weapon.gun_musicgun_ammo = ammo weapon.gun_musicgun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_musicgun_ammo *= 2 number
scoreboard players operation @s weapon.gun_musicgun_clip_ammo = clip_ammo weapon.gun_musicgun
scoreboard players set @s weapon.gun_musicgun_rate 0
scoreboard players set @s weapon.gun_musicgun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["musicgun"]}] run function weapon:range/gun/slot/xp_lv {gun:"musicgun"}
execute if items entity @s container.* *[custom_data~{tag:["musicgun"]}] run function weapon:range/gun/slot/count {gun:"musicgun"}
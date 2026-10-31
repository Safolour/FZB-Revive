
scoreboard players operation @s weapon.gun_shotgun_ammo = ammo weapon.gun_shotgun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_shotgun_ammo *= 2 number
scoreboard players operation @s weapon.gun_shotgun_clip_ammo = clip_ammo weapon.gun_shotgun
scoreboard players set @s weapon.gun_shotgun_rate 0
scoreboard players set @s weapon.gun_shotgun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["shotgun"]}] run function weapon:range/gun/slot/xp_lv {gun:"shotgun"}
execute if items entity @s container.* *[custom_data~{tag:["shotgun"]}] run function weapon:range/gun/slot/count {gun:"shotgun"}
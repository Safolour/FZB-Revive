
scoreboard players operation @s weapon.gun_ultimatemusicgun_ammo = ammo weapon.gun_ultimatemusicgun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimatemusicgun_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimatemusicgun_clip_ammo = clip_ammo weapon.gun_ultimatemusicgun
scoreboard players set @s weapon.gun_ultimatemusicgun_rate 0
scoreboard players set @s weapon.gun_ultimatemusicgun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimatemusicgun"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatemusicgun"}
execute if items entity @s container.* *[custom_data~{tag:["ultimatemusicgun"]}] run function weapon:range/gun/slot/count {gun:"ultimatemusicgun"}
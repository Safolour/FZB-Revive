
scoreboard players operation @s weapon.gun_ultimatepracticegun_ammo = ammo weapon.gun_ultimatepracticegun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimatepracticegun_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimatepracticegun_clip_ammo = clip_ammo weapon.gun_ultimatepracticegun
scoreboard players set @s weapon.gun_ultimatepracticegun_rate 0
scoreboard players set @s weapon.gun_ultimatepracticegun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimatepracticegun"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatepracticegun"}
execute if items entity @s container.* *[custom_data~{tag:["ultimatepracticegun"]}] run function weapon:range/gun/slot/count {gun:"ultimatepracticegun"}
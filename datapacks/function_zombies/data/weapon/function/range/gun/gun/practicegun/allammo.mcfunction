
scoreboard players operation @s weapon.gun_practicegun_ammo = ammo weapon.gun_practicegun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_practicegun_ammo *= 2 number
scoreboard players operation @s weapon.gun_practicegun_clip_ammo = clip_ammo weapon.gun_practicegun
scoreboard players set @s weapon.gun_practicegun_rate 0
scoreboard players set @s weapon.gun_practicegun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["practicegun"]}] run function weapon:range/gun/slot/xp_lv {gun:"practicegun"}
execute if items entity @s container.* *[custom_data~{tag:["practicegun"]}] run function weapon:range/gun/slot/count {gun:"practicegun"}
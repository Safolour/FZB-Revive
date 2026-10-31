scoreboard players operation @s weapon.gun_ultimateseason_autumn_ammo = ammo weapon.gun_ultimateseason_autumn
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimateseason_autumn_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimateseason_autumn_clip_ammo = clip_ammo weapon.gun_ultimateseason_autumn
scoreboard players set @s weapon.gun_ultimateseason_autumn_rate 0
scoreboard players set @s weapon.gun_ultimateseason_autumn_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimateseason_autumn"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimateseason_autumn"}
execute if items entity @s container.* *[custom_data~{tag:["ultimateseason_autumn"]}] run function weapon:range/gun/slot/count {gun:"ultimateseason_autumn"}

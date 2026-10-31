
scoreboard players operation @s weapon.gun_ultimatesoaker_ammo = ammo weapon.gun_ultimatesoaker
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimatesoaker_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimatesoaker_clip_ammo = clip_ammo weapon.gun_ultimatesoaker
scoreboard players set @s weapon.gun_ultimatesoaker_rate 0
scoreboard players set @s weapon.gun_ultimatesoaker_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimatesoaker"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatesoaker"}
execute if items entity @s container.* *[custom_data~{tag:["ultimatesoaker"]}] run function weapon:range/gun/slot/count {gun:"ultimatesoaker"}
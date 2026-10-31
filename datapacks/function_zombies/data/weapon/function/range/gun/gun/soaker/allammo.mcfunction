
scoreboard players operation @s weapon.gun_soaker_ammo = ammo weapon.gun_soaker
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_soaker_ammo *= 2 number
scoreboard players operation @s weapon.gun_soaker_clip_ammo = clip_ammo weapon.gun_soaker
scoreboard players set @s weapon.gun_soaker_rate 0
scoreboard players set @s weapon.gun_soaker_reload 0
execute if items entity @s weapon *[custom_data~{tag:["soaker"]}] run function weapon:range/gun/slot/xp_lv {gun:"soaker"}
execute if items entity @s container.* *[custom_data~{tag:["soaker"]}] run function weapon:range/gun/slot/count {gun:"soaker"}
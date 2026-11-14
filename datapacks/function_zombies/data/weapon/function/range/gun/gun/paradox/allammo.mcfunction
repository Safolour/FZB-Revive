scoreboard players operation @s weapon.gun_paradox_ammo = ammo weapon.gun_paradox
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_paradox_ammo *= 2 number
scoreboard players operation @s weapon.gun_paradox_clip_ammo = clip_ammo weapon.gun_paradox
scoreboard players set @s weapon.gun_paradox_rate 0
scoreboard players set @s weapon.gun_paradox_reload 0
execute if items entity @s weapon *[custom_data~{tag:["paradox"]}] run function weapon:range/gun/slot/xp_lv {gun:"paradox"}
execute if items entity @s container.* *[custom_data~{tag:["paradox"]}] run function weapon:range/gun/slot/count {gun:"paradox"}
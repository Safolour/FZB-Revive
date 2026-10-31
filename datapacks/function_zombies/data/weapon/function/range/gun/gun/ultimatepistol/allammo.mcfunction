
scoreboard players operation @s weapon.gun_ultimatepistol_ammo = ammo weapon.gun_ultimatepistol
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimatepistol_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimatepistol_clip_ammo = clip_ammo weapon.gun_ultimatepistol
scoreboard players set @s weapon.gun_ultimatepistol_rate 0
scoreboard players set @s weapon.gun_ultimatepistol_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimatepistol"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatepistol"}
execute if items entity @s container.* *[custom_data~{tag:["ultimatepistol"]}] run function weapon:range/gun/slot/count {gun:"ultimatepistol"}
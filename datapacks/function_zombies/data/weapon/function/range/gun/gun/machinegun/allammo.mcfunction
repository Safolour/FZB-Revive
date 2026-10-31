
scoreboard players operation @s weapon.gun_machinegun_ammo = ammo weapon.gun_machinegun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_machinegun_ammo *= 2 number
scoreboard players operation @s weapon.gun_machinegun_clip_ammo = clip_ammo weapon.gun_machinegun
scoreboard players set @s weapon.gun_machinegun_rate 0
scoreboard players set @s weapon.gun_machinegun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["machinegun"]}] run function weapon:range/gun/slot/xp_lv {gun:"machinegun"}
execute if items entity @s container.* *[custom_data~{tag:["machinegun"]}] run function weapon:range/gun/slot/count {gun:"machinegun"}
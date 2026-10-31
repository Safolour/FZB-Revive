
scoreboard players operation @s weapon.gun_ultimatesnowballcannon_ammo = ammo weapon.gun_ultimatesnowballcannon
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimatesnowballcannon_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimatesnowballcannon_clip_ammo = clip_ammo weapon.gun_ultimatesnowballcannon
scoreboard players set @s weapon.gun_ultimatesnowballcannon_rate 0
scoreboard players set @s weapon.gun_ultimatesnowballcannon_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimatesnowballcannon"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatesnowballcannon"}
execute if items entity @s container.* *[custom_data~{tag:["ultimatesnowballcannon"]}] run function weapon:range/gun/slot/count {gun:"ultimatesnowballcannon"}
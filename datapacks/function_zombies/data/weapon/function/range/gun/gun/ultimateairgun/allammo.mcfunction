
scoreboard players operation @s weapon.gun_ultimateairgun_ammo = ammo weapon.gun_ultimateairgun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimateairgun_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimateairgun_clip_ammo = clip_ammo weapon.gun_ultimateairgun
scoreboard players set @s weapon.gun_ultimateairgun_rate 0
scoreboard players set @s weapon.gun_ultimateairgun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimateairgun"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimateairgun"}
execute if items entity @s container.* *[custom_data~{tag:["ultimateairgun"]}] run function weapon:range/gun/slot/count {gun:"ultimateairgun"}
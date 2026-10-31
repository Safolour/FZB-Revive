
scoreboard players operation @s weapon.gun_golddigger_ammo = ammo weapon.gun_golddigger
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_golddigger_ammo *= 2 number
scoreboard players operation @s weapon.gun_golddigger_clip_ammo = clip_ammo weapon.gun_golddigger
scoreboard players set @s weapon.gun_golddigger_rate 0
scoreboard players set @s weapon.gun_golddigger_reload 0
execute if items entity @s weapon *[custom_data~{tag:["golddigger"]}] run function weapon:range/gun/slot/xp_lv {gun:"golddigger"}
execute if items entity @s container.* *[custom_data~{tag:["golddigger"]}] run function weapon:range/gun/slot/count {gun:"golddigger"}
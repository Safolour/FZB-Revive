
scoreboard players operation @s weapon.gun_ultimategolddigger_ammo = ammo weapon.gun_ultimategolddigger
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_ultimategolddigger_ammo *= 2 number
scoreboard players operation @s weapon.gun_ultimategolddigger_clip_ammo = clip_ammo weapon.gun_ultimategolddigger
scoreboard players set @s weapon.gun_ultimategolddigger_rate 0
scoreboard players set @s weapon.gun_ultimategolddigger_reload 0
execute if items entity @s weapon *[custom_data~{tag:["ultimategolddigger"]}] run function weapon:range/gun/slot/xp_lv {gun:"ultimategolddigger"}
execute if items entity @s container.* *[custom_data~{tag:["ultimategolddigger"]}] run function weapon:range/gun/slot/count {gun:"ultimategolddigger"}
scoreboard players operation @s weapon.gun_resonance_ammo = ammo weapon.gun_resonance
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_resonance_ammo *= 2 number
scoreboard players operation @s weapon.gun_resonance_clip_ammo = clip_ammo weapon.gun_resonance
scoreboard players set @s weapon.gun_resonance_rate 0
scoreboard players set @s weapon.gun_resonance_reload 0
execute if items entity @s weapon *[custom_data~{tag:["resonance"]}] run function weapon:range/gun/slot/xp_lv {gun:"resonance"}
execute if items entity @s container.* *[custom_data~{tag:["resonance"]}] run function weapon:range/gun/slot/count {gun:"resonance"}

scoreboard players operation @s weapon.gun_oxidizedcoppergun_ammo = ammo weapon.gun_oxidizedcoppergun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_oxidizedcoppergun_ammo *= 2 number
scoreboard players operation @s weapon.gun_oxidizedcoppergun_clip_ammo = clip_ammo weapon.gun_oxidizedcoppergun
scoreboard players set @s weapon.gun_oxidizedcoppergun_rate 0
scoreboard players set @s weapon.gun_oxidizedcoppergun_reload 0
execute if items entity @s weapon *[custom_data~{tag:["oxidizedcoppergun"]}] run function weapon:range/gun/slot/xp_lv {gun:"oxidizedcoppergun"}
execute if items entity @s container.* *[custom_data~{tag:["oxidizedcoppergun"]}] run function weapon:range/gun/slot/count {gun:"oxidizedcoppergun"}

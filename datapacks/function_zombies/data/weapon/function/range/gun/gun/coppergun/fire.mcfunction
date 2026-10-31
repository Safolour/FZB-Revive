function weapon:range/gun/gun/coppergun/summon
execute if entity @s[scores={weapon.gun_coppergun_ammo=1..,weapon.gun_coppergun_clip_ammo=0}] run function weapon:range/gun/gun/coppergun/reload
execute if entity @s[scores={weapon.gun_coppergun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"coppergun"}
execute if items entity @s weapon.mainhand *[custom_data~{gun:"coppergun"}] run function weapon:range/gun/gun/coppergun/oxidize

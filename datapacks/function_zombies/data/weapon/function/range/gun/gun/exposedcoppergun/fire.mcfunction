function weapon:range/gun/gun/exposedcoppergun/summon
execute if entity @s[scores={weapon.gun_exposedcoppergun_ammo=1..,weapon.gun_exposedcoppergun_clip_ammo=0}] run function weapon:range/gun/gun/exposedcoppergun/reload
execute if entity @s[scores={weapon.gun_exposedcoppergun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"exposedcoppergun"}
execute if items entity @s weapon.mainhand *[custom_data~{gun:"exposedcoppergun"}] run function weapon:range/gun/gun/exposedcoppergun/oxidize

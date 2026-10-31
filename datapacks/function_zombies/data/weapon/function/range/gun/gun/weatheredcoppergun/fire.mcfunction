function weapon:range/gun/gun/weatheredcoppergun/summon
execute if entity @s[scores={weapon.gun_weatheredcoppergun_ammo=1..,weapon.gun_weatheredcoppergun_clip_ammo=0}] run function weapon:range/gun/gun/weatheredcoppergun/reload
execute if entity @s[scores={weapon.gun_weatheredcoppergun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"weatheredcoppergun"}
execute if items entity @s weapon.mainhand *[custom_data~{gun:"weatheredcoppergun"}] run function weapon:range/gun/gun/weatheredcoppergun/oxidize

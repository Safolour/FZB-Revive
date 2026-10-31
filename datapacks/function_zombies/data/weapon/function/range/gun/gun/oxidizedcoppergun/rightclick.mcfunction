execute if entity @s[scores={weapon.gun_oxidizedcoppergun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_oxidizedcoppergun_ammo=0}] run scoreboard players set @s weapon.gun_oxidizedcoppergun_clip_ammo 0
execute if entity @s[scores={weapon.gun_oxidizedcoppergun_ammo=1..,weapon.gun_oxidizedcoppergun_clip_ammo=0}] run function weapon:range/gun/gun/oxidizedcoppergun/reload
execute if entity @s[scores={weapon.gun_oxidizedcoppergun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_oxidizedcoppergun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_oxidizedcoppergun_ammo=1..}] run function weapon:range/gun/gun/oxidizedcoppergun/summon
execute if entity @s[scores={weapon.gun_oxidizedcoppergun_ammo=1..,weapon.gun_oxidizedcoppergun_clip_ammo=0}] run function weapon:range/gun/gun/oxidizedcoppergun/reload
execute if entity @s[scores={weapon.gun_oxidizedcoppergun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"oxidizedcoppergun"}

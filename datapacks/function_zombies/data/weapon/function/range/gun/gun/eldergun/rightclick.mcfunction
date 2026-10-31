
execute if entity @s[scores={weapon.gun_eldergun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_eldergun_ammo=0}] run scoreboard players set @s weapon.gun_eldergun_clip_ammo 0
execute if entity @s[scores={weapon.gun_eldergun_ammo=1..,weapon.gun_eldergun_clip_ammo=0}] run function weapon:range/gun/gun/eldergun/reload
execute if entity @s[scores={weapon.gun_eldergun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_eldergun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_eldergun_ammo=1..}] run function weapon:range/gun/gun/eldergun/summon
execute if entity @s[scores={weapon.gun_eldergun_ammo=1..,weapon.gun_eldergun_clip_ammo=0}] run function weapon:range/gun/gun/eldergun/reload
execute if entity @s[scores={weapon.gun_eldergun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"eldergun"}
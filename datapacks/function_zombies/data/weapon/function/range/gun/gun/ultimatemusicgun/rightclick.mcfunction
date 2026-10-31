
execute if entity @s[scores={weapon.gun_ultimatemusicgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatemusicgun_ammo=0}] run scoreboard players set @s weapon.gun_ultimatemusicgun_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatemusicgun_ammo=1..,weapon.gun_ultimatemusicgun_clip_ammo=0}] run function weapon:range/gun/gun/ultimatemusicgun/reload
execute if entity @s[scores={weapon.gun_ultimatemusicgun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatemusicgun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatemusicgun_ammo=1..}] run function weapon:range/gun/gun/ultimatemusicgun/summon
execute if entity @s[scores={weapon.gun_ultimatemusicgun_ammo=1..,weapon.gun_ultimatemusicgun_clip_ammo=0}] run function weapon:range/gun/gun/ultimatemusicgun/reload
execute if entity @s[scores={weapon.gun_ultimatemusicgun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatemusicgun"}
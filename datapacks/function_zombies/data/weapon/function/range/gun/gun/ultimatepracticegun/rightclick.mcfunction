
execute if entity @s[scores={weapon.gun_ultimatepracticegun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatepracticegun_ammo=0}] run scoreboard players set @s weapon.gun_ultimatepracticegun_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatepracticegun_ammo=1..,weapon.gun_ultimatepracticegun_clip_ammo=0}] run function weapon:range/gun/gun/ultimatepracticegun/reload
execute if entity @s[scores={weapon.gun_ultimatepracticegun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatepracticegun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatepracticegun_ammo=1..}] run function weapon:range/gun/gun/ultimatepracticegun/summon
execute if entity @s[scores={weapon.gun_ultimatepracticegun_ammo=1..,weapon.gun_ultimatepracticegun_clip_ammo=0}] run function weapon:range/gun/gun/ultimatepracticegun/reload
execute if entity @s[scores={weapon.gun_ultimatepracticegun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatepracticegun"}
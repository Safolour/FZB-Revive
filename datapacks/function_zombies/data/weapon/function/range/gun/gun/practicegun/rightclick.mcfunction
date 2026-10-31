
execute if entity @s[scores={weapon.gun_practicegun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_practicegun_ammo=0}] run scoreboard players set @s weapon.gun_practicegun_clip_ammo 0
execute if entity @s[scores={weapon.gun_practicegun_ammo=1..,weapon.gun_practicegun_clip_ammo=0}] run function weapon:range/gun/gun/practicegun/reload
execute if entity @s[scores={weapon.gun_practicegun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_practicegun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_practicegun_ammo=1..}] run function weapon:range/gun/gun/practicegun/summon
execute if entity @s[scores={weapon.gun_practicegun_ammo=1..,weapon.gun_practicegun_clip_ammo=0}] run function weapon:range/gun/gun/practicegun/reload
execute if entity @s[scores={weapon.gun_practicegun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"practicegun"}
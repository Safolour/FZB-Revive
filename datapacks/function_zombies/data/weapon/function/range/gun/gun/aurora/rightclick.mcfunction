execute if entity @s[scores={weapon.gun_aurora_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_aurora_ammo=0}] run scoreboard players set @s weapon.gun_aurora_clip_ammo 0
execute if entity @s[scores={weapon.gun_aurora_ammo=1..,weapon.gun_aurora_clip_ammo=0}] run function weapon:range/gun/gun/aurora/reload
execute if entity @s[scores={weapon.gun_aurora_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_aurora_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_aurora_ammo=1..}] run function weapon:range/gun/gun/aurora/summon
execute if entity @s[scores={weapon.gun_aurora_ammo=1..,weapon.gun_aurora_clip_ammo=0}] run function weapon:range/gun/gun/aurora/reload
execute if entity @s[scores={weapon.gun_aurora_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"aurora"}

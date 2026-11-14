execute if entity @s[scores={weapon.gun_paradox_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_paradox_ammo=0}] run scoreboard players set @s weapon.gun_paradox_clip_ammo 0
execute if entity @s[scores={weapon.gun_paradox_ammo=1..,weapon.gun_paradox_clip_ammo=0}] run function weapon:range/gun/gun/paradox/reload
execute if entity @s[scores={weapon.gun_paradox_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_paradox_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_paradox_ammo=1..}] run function weapon:range/gun/gun/paradox/summon
execute if entity @s[scores={weapon.gun_paradox_ammo=1..,weapon.gun_paradox_clip_ammo=0}] run function weapon:range/gun/gun/paradox/reload
execute if entity @s[scores={weapon.gun_paradox_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"paradox"}
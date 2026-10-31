
execute if entity @s[scores={weapon.gun_rifle_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_rifle_ammo=0}] run scoreboard players set @s weapon.gun_rifle_clip_ammo 0
execute if entity @s[scores={weapon.gun_rifle_ammo=1..,weapon.gun_rifle_clip_ammo=0}] run function weapon:range/gun/gun/rifle/reload
execute if entity @s[scores={weapon.gun_rifle_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_rifle_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_rifle_ammo=1..}] run function weapon:range/gun/gun/rifle/summon
execute if entity @s[scores={weapon.gun_rifle_ammo=1..,weapon.gun_rifle_clip_ammo=0}] run function weapon:range/gun/gun/rifle/reload
execute if entity @s[scores={weapon.gun_rifle_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"rifle"}
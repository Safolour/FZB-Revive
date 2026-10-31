
execute if entity @s[scores={weapon.gun_golddigger_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_golddigger_ammo=0}] run scoreboard players set @s weapon.gun_golddigger_clip_ammo 0
execute if entity @s[scores={weapon.gun_golddigger_ammo=1..,weapon.gun_golddigger_clip_ammo=0}] run function weapon:range/gun/gun/golddigger/reload
execute if entity @s[scores={weapon.gun_golddigger_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_golddigger_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_golddigger_ammo=1..}] run function weapon:range/gun/gun/golddigger/summon
execute if entity @s[scores={weapon.gun_golddigger_ammo=1..,weapon.gun_golddigger_clip_ammo=0}] run function weapon:range/gun/gun/golddigger/reload
execute if entity @s[scores={weapon.gun_golddigger_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"golddigger"}
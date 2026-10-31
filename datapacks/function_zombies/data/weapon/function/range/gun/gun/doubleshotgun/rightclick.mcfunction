
execute if entity @s[scores={weapon.gun_doubleshotgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_doubleshotgun_ammo=0}] run scoreboard players set @s weapon.gun_doubleshotgun_clip_ammo 0
execute if entity @s[scores={weapon.gun_doubleshotgun_ammo=1..,weapon.gun_doubleshotgun_clip_ammo=0}] run function weapon:range/gun/gun/doubleshotgun/reload
execute if entity @s[scores={weapon.gun_doubleshotgun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_doubleshotgun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_doubleshotgun_ammo=1..}] run function weapon:range/gun/gun/doubleshotgun/summon
execute if entity @s[scores={weapon.gun_doubleshotgun_ammo=1..,weapon.gun_doubleshotgun_clip_ammo=0}] run function weapon:range/gun/gun/doubleshotgun/reload
execute if entity @s[scores={weapon.gun_doubleshotgun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"doubleshotgun"}
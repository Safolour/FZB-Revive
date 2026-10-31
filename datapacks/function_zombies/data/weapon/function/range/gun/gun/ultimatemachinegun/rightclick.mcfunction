
execute if entity @s[scores={weapon.gun_ultimatemachinegun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatemachinegun_ammo=0}] run scoreboard players set @s weapon.gun_ultimatemachinegun_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatemachinegun_ammo=1..,weapon.gun_ultimatemachinegun_clip_ammo=0}] run function weapon:range/gun/gun/ultimatemachinegun/reload
execute if entity @s[scores={weapon.gun_ultimatemachinegun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatemachinegun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatemachinegun_ammo=1..}] run function weapon:range/gun/gun/ultimatemachinegun/summon
execute if entity @s[scores={weapon.gun_ultimatemachinegun_ammo=1..,weapon.gun_ultimatemachinegun_clip_ammo=0}] run function weapon:range/gun/gun/ultimatemachinegun/reload
execute if entity @s[scores={weapon.gun_ultimatemachinegun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatemachinegun"}
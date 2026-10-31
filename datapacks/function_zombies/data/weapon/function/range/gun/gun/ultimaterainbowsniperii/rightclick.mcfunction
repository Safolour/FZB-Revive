
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_ammo=0}] run scoreboard players set @s weapon.gun_ultimaterainbowsniperii_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_ammo=1..,weapon.gun_ultimaterainbowsniperii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowsniperii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_ammo=1..}] run function weapon:range/gun/gun/ultimaterainbowsniperii/summon
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_ammo=1..,weapon.gun_ultimaterainbowsniperii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowsniperii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowsniperii"}
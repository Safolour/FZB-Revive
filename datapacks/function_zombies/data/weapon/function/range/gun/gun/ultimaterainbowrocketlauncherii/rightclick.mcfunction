execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncherii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncherii_ammo=0}] run scoreboard players set @s weapon.gun_ultimaterainbowrocketlauncherii_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncherii_ammo=1..,weapon.gun_ultimaterainbowrocketlauncherii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowrocketlauncherii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncherii_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncherii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncherii_ammo=1..}] run function weapon:range/gun/gun/ultimaterainbowrocketlauncherii/summon
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncherii_ammo=1..,weapon.gun_ultimaterainbowrocketlauncherii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowrocketlauncherii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncherii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowrocketlauncherii"}

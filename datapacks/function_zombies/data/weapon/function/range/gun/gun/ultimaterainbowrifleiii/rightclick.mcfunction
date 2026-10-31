
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_ammo=0}] run scoreboard players set @s weapon.gun_ultimaterainbowrifleiii_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_ammo=1..,weapon.gun_ultimaterainbowrifleiii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowrifleiii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_ammo=1..}] run function weapon:range/gun/gun/ultimaterainbowrifleiii/summon
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_ammo=1..,weapon.gun_ultimaterainbowrifleiii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowrifleiii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowrifleiii"}
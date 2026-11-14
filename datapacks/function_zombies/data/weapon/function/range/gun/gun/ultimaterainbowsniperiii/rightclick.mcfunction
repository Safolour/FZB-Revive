
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperiii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperiii_ammo=0}] run scoreboard players set @s weapon.gun_ultimaterainbowsniperiii_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperiii_ammo=1..,weapon.gun_ultimaterainbowsniperiii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowsniperiii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperiii_rate=1..}] run return fail
execute unless score @s weapon.gun_ultimaterainbowsniperiii_clip_ammo matches 1.. run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperiii_ammo=1..}] run function weapon:range/gun/gun/ultimaterainbowsniperiii/summon
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperiii_ammo=1..,weapon.gun_ultimaterainbowsniperiii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowsniperiii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperiii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowsniperiii"}
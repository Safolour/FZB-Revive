
execute if entity @s[scores={weapon.gun_rainbowsniper_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_rainbowsniper_ammo=0}] run scoreboard players set @s weapon.gun_rainbowsniper_clip_ammo 0
execute if entity @s[scores={weapon.gun_rainbowsniper_ammo=1..,weapon.gun_rainbowsniper_clip_ammo=0}] run function weapon:range/gun/gun/rainbowsniper/reload
execute if entity @s[scores={weapon.gun_rainbowsniper_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_rainbowsniper_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_rainbowsniper_ammo=1..}] run function weapon:range/gun/gun/rainbowsniper/summon
execute if entity @s[scores={weapon.gun_rainbowsniper_ammo=1..,weapon.gun_rainbowsniper_clip_ammo=0}] run function weapon:range/gun/gun/rainbowsniper/reload
execute if entity @s[scores={weapon.gun_rainbowsniper_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"rainbowsniper"}
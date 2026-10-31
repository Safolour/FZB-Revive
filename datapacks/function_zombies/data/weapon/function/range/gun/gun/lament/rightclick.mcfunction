execute if entity @s[scores={weapon.gun_lament_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_lament_ammo=0}] run scoreboard players set @s weapon.gun_lament_clip_ammo 0
execute if entity @s[scores={weapon.gun_lament_ammo=1..,weapon.gun_lament_clip_ammo=0}] run function weapon:range/gun/gun/lament/reload
execute if entity @s[scores={weapon.gun_lament_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_lament_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_lament_ammo=1..}] run function weapon:range/gun/gun/lament/summon
execute if entity @s[scores={weapon.gun_lament_ammo=1..,weapon.gun_lament_clip_ammo=0}] run function weapon:range/gun/gun/lament/reload
execute if entity @s[scores={weapon.gun_lament_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"lament"}

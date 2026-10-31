
execute if entity @s[scores={weapon.gun_blueprint_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_blueprint_ammo=0}] run scoreboard players set @s weapon.gun_blueprint_clip_ammo 0
execute if entity @s[scores={weapon.gun_blueprint_ammo=1..,weapon.gun_blueprint_clip_ammo=0}] run function weapon:range/gun/gun/blueprint/reload
execute if entity @s[scores={weapon.gun_blueprint_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_blueprint_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_blueprint_ammo=1..}] run function weapon:range/gun/gun/blueprint/summon
execute if entity @s[scores={weapon.gun_blueprint_ammo=1..,weapon.gun_blueprint_clip_ammo=0}] run function weapon:range/gun/gun/blueprint/reload
execute if entity @s[scores={weapon.gun_blueprint_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"blueprint"}
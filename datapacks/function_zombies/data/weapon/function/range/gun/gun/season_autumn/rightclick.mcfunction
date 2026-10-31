execute if entity @s[scores={weapon.gun_season_autumn_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_season_autumn_ammo=0}] run scoreboard players set @s weapon.gun_season_autumn_clip_ammo 0
execute if entity @s[scores={weapon.gun_season_autumn_ammo=1..,weapon.gun_season_autumn_clip_ammo=0}] run function weapon:range/gun/gun/season_autumn/reload
execute if entity @s[scores={weapon.gun_season_autumn_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_season_autumn_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_season_autumn_ammo=1..}] run function weapon:range/gun/gun/season_autumn/summon
execute if entity @s[scores={weapon.gun_season_autumn_ammo=1..,weapon.gun_season_autumn_clip_ammo=0}] run function weapon:range/gun/gun/season_autumn/reload
execute if entity @s[scores={weapon.gun_season_autumn_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"season_autumn"}

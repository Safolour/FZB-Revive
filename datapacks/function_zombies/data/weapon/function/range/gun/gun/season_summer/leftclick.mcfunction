execute if entity @s[scores={weapon.gun_season_summer_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_season_summer_ammo=0}] run return fail
execute if score @s weapon.gun_season_summer_clip_ammo = clip_ammo weapon.gun_season_summer run return fail
execute if score @s weapon.gun_season_summer_clip_ammo = @s weapon.gun_season_summer_ammo run return fail
function weapon:range/gun/gun/season_summer/reload

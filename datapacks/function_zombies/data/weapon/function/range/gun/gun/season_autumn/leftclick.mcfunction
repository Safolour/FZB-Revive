execute if entity @s[scores={weapon.gun_season_autumn_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_season_autumn_ammo=0}] run return fail
execute if score @s weapon.gun_season_autumn_clip_ammo = clip_ammo weapon.gun_season_autumn run return fail
execute if score @s weapon.gun_season_autumn_clip_ammo = @s weapon.gun_season_autumn_ammo run return fail
function weapon:range/gun/gun/season_autumn/reload

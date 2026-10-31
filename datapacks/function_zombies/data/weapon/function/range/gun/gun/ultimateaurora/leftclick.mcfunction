execute if entity @s[scores={weapon.gun_ultimateaurora_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateaurora_ammo=0}] run return fail
execute if score @s weapon.gun_ultimateaurora_clip_ammo = clip_ammo weapon.gun_ultimateaurora run return fail
execute if score @s weapon.gun_ultimateaurora_clip_ammo = @s weapon.gun_ultimateaurora_ammo run return fail
function weapon:range/gun/gun/ultimateaurora/reload

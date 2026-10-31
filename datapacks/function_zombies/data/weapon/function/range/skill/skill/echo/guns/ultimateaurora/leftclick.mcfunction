execute if entity @s[scores={weapon.gun_echo_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateaurora_ammo=0}] run return fail
execute if score @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimateaurora run return fail
execute if score @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimateaurora_ammo run return fail
function weapon:range/skill/skill/echo/guns/ultimateaurora/reload


title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimategolddiggerv_clip_ammo = clip_ammo weapon.gun_ultimategolddiggerv
execute if score @s weapon.gun_ultimategolddiggerv_ammo >= clip_ammo weapon.gun_ultimategolddiggerv run function weapon:range/gun/slot/count {gun:"ultimategolddiggerv"}
execute if score @s weapon.gun_ultimategolddiggerv_ammo >= clip_ammo weapon.gun_ultimategolddiggerv run return fail
scoreboard players operation @s weapon.gun_ultimategolddiggerv_clip_ammo = @s weapon.gun_ultimategolddiggerv_ammo
function weapon:range/gun/slot/count {gun:"ultimategolddiggerv"}
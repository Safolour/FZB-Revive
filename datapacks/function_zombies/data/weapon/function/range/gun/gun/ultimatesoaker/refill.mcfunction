
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimatesoaker_clip_ammo = clip_ammo weapon.gun_ultimatesoaker
execute if score @s weapon.gun_ultimatesoaker_ammo >= clip_ammo weapon.gun_ultimatesoaker run function weapon:range/gun/slot/count {gun:"ultimatesoaker"}
execute if score @s weapon.gun_ultimatesoaker_ammo >= clip_ammo weapon.gun_ultimatesoaker run return fail
scoreboard players operation @s weapon.gun_ultimatesoaker_clip_ammo = @s weapon.gun_ultimatesoaker_ammo
function weapon:range/gun/slot/count {gun:"ultimatesoaker"}
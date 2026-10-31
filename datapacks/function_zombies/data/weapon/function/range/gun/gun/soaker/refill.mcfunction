
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_soaker_clip_ammo = clip_ammo weapon.gun_soaker
execute if score @s weapon.gun_soaker_ammo >= clip_ammo weapon.gun_soaker run function weapon:range/gun/slot/count {gun:"soaker"}
execute if score @s weapon.gun_soaker_ammo >= clip_ammo weapon.gun_soaker run return fail
scoreboard players operation @s weapon.gun_soaker_clip_ammo = @s weapon.gun_soaker_ammo
function weapon:range/gun/slot/count {gun:"soaker"}
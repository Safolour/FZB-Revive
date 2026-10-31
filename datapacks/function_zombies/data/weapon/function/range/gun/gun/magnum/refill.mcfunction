
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_magnum_clip_ammo = clip_ammo weapon.gun_magnum
execute if score @s weapon.gun_magnum_ammo >= clip_ammo weapon.gun_magnum run function weapon:range/gun/slot/count {gun:"magnum"}
execute if score @s weapon.gun_magnum_ammo >= clip_ammo weapon.gun_magnum run return fail
scoreboard players operation @s weapon.gun_magnum_clip_ammo = @s weapon.gun_magnum_ammo
function weapon:range/gun/slot/count {gun:"magnum"}
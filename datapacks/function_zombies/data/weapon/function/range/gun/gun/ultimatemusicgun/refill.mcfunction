
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimatemusicgun_clip_ammo = clip_ammo weapon.gun_ultimatemusicgun
execute if score @s weapon.gun_ultimatemusicgun_ammo >= clip_ammo weapon.gun_ultimatemusicgun run function weapon:range/gun/slot/count {gun:"ultimatemusicgun"}
execute if score @s weapon.gun_ultimatemusicgun_ammo >= clip_ammo weapon.gun_ultimatemusicgun run return fail
scoreboard players operation @s weapon.gun_ultimatemusicgun_clip_ammo = @s weapon.gun_ultimatemusicgun_ammo
function weapon:range/gun/slot/count {gun:"ultimatemusicgun"}
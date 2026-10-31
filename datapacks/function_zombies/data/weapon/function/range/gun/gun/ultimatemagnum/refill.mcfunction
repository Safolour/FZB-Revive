
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimatemagnum_clip_ammo = clip_ammo weapon.gun_ultimatemagnum
execute if score @s weapon.gun_ultimatemagnum_ammo >= clip_ammo weapon.gun_ultimatemagnum run function weapon:range/gun/slot/count {gun:"ultimatemagnum"}
execute if score @s weapon.gun_ultimatemagnum_ammo >= clip_ammo weapon.gun_ultimatemagnum run return fail
scoreboard players operation @s weapon.gun_ultimatemagnum_clip_ammo = @s weapon.gun_ultimatemagnum_ammo
function weapon:range/gun/slot/count {gun:"ultimatemagnum"}
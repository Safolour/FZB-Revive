
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimatezapper_clip_ammo = clip_ammo weapon.gun_ultimatezapper
execute if score @s weapon.gun_ultimatezapper_ammo >= clip_ammo weapon.gun_ultimatezapper run function weapon:range/gun/slot/count {gun:"ultimatezapper"}
execute if score @s weapon.gun_ultimatezapper_ammo >= clip_ammo weapon.gun_ultimatezapper run return fail
scoreboard players operation @s weapon.gun_ultimatezapper_clip_ammo = @s weapon.gun_ultimatezapper_ammo
function weapon:range/gun/slot/count {gun:"ultimatezapper"}
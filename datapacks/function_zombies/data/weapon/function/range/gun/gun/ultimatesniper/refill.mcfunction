
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimatesniper_clip_ammo = clip_ammo weapon.gun_ultimatesniper
execute if score @s weapon.gun_ultimatesniper_ammo >= clip_ammo weapon.gun_ultimatesniper run function weapon:range/gun/slot/count {gun:"ultimatesniper"}
execute if score @s weapon.gun_ultimatesniper_ammo >= clip_ammo weapon.gun_ultimatesniper run return fail
scoreboard players operation @s weapon.gun_ultimatesniper_clip_ammo = @s weapon.gun_ultimatesniper_ammo
function weapon:range/gun/slot/count {gun:"ultimatesniper"}
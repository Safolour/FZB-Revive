
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_sniper_clip_ammo = clip_ammo weapon.gun_sniper
execute if score @s weapon.gun_sniper_ammo >= clip_ammo weapon.gun_sniper run function weapon:range/gun/slot/count {gun:"sniper"}
execute if score @s weapon.gun_sniper_ammo >= clip_ammo weapon.gun_sniper run return fail
scoreboard players operation @s weapon.gun_sniper_clip_ammo = @s weapon.gun_sniper_ammo
function weapon:range/gun/slot/count {gun:"sniper"}
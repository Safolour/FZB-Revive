
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_rifle_clip_ammo = clip_ammo weapon.gun_rifle
execute if score @s weapon.gun_rifle_ammo >= clip_ammo weapon.gun_rifle run function weapon:range/gun/slot/count {gun:"rifle"}
execute if score @s weapon.gun_rifle_ammo >= clip_ammo weapon.gun_rifle run return fail
scoreboard players operation @s weapon.gun_rifle_clip_ammo = @s weapon.gun_rifle_ammo
function weapon:range/gun/slot/count {gun:"rifle"}

title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimaterainbowrifleiii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrifleiii
execute if score @s weapon.gun_ultimaterainbowrifleiii_ammo >= clip_ammo weapon.gun_ultimaterainbowrifleiii run function weapon:range/gun/slot/count {gun:"ultimaterainbowrifleiii"}
execute if score @s weapon.gun_ultimaterainbowrifleiii_ammo >= clip_ammo weapon.gun_ultimaterainbowrifleiii run return fail
scoreboard players operation @s weapon.gun_ultimaterainbowrifleiii_clip_ammo = @s weapon.gun_ultimaterainbowrifleiii_ammo
function weapon:range/gun/slot/count {gun:"ultimaterainbowrifleiii"}
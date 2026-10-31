
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimaterocketlauncher_clip_ammo = clip_ammo weapon.gun_ultimaterocketlauncher
execute if score @s weapon.gun_ultimaterocketlauncher_ammo >= clip_ammo weapon.gun_ultimaterocketlauncher run function weapon:range/gun/slot/count {gun:"ultimaterocketlauncher"}
execute if score @s weapon.gun_ultimaterocketlauncher_ammo >= clip_ammo weapon.gun_ultimaterocketlauncher run return fail
scoreboard players operation @s weapon.gun_ultimaterocketlauncher_clip_ammo = @s weapon.gun_ultimaterocketlauncher_ammo
function weapon:range/gun/slot/count {gun:"ultimaterocketlauncher"}
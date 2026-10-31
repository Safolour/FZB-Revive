
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_rocketlauncher_clip_ammo = clip_ammo weapon.gun_rocketlauncher
execute if score @s weapon.gun_rocketlauncher_ammo >= clip_ammo weapon.gun_rocketlauncher run function weapon:range/gun/slot/count {gun:"rocketlauncher"}
execute if score @s weapon.gun_rocketlauncher_ammo >= clip_ammo weapon.gun_rocketlauncher run return fail
scoreboard players operation @s weapon.gun_rocketlauncher_clip_ammo = @s weapon.gun_rocketlauncher_ammo
function weapon:range/gun/slot/count {gun:"rocketlauncher"}
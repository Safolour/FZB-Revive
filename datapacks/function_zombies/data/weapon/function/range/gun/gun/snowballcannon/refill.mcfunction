
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_snowballcannon_clip_ammo = clip_ammo weapon.gun_snowballcannon
execute if score @s weapon.gun_snowballcannon_ammo >= clip_ammo weapon.gun_snowballcannon run function weapon:range/gun/slot/count {gun:"snowballcannon"}
execute if score @s weapon.gun_snowballcannon_ammo >= clip_ammo weapon.gun_snowballcannon run return fail
scoreboard players operation @s weapon.gun_snowballcannon_clip_ammo = @s weapon.gun_snowballcannon_ammo
function weapon:range/gun/slot/count {gun:"snowballcannon"}
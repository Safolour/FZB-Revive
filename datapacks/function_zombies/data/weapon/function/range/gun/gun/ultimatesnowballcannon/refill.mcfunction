
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimatesnowballcannon_clip_ammo = clip_ammo weapon.gun_ultimatesnowballcannon
execute if score @s weapon.gun_ultimatesnowballcannon_ammo >= clip_ammo weapon.gun_ultimatesnowballcannon run function weapon:range/gun/slot/count {gun:"ultimatesnowballcannon"}
execute if score @s weapon.gun_ultimatesnowballcannon_ammo >= clip_ammo weapon.gun_ultimatesnowballcannon run return fail
scoreboard players operation @s weapon.gun_ultimatesnowballcannon_clip_ammo = @s weapon.gun_ultimatesnowballcannon_ammo
function weapon:range/gun/slot/count {gun:"ultimatesnowballcannon"}
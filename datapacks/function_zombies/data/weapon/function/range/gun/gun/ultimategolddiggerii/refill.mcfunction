
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimategolddiggerii_clip_ammo = clip_ammo weapon.gun_ultimategolddiggerii
execute if score @s weapon.gun_ultimategolddiggerii_ammo >= clip_ammo weapon.gun_ultimategolddiggerii run function weapon:range/gun/slot/count {gun:"ultimategolddiggerii"}
execute if score @s weapon.gun_ultimategolddiggerii_ammo >= clip_ammo weapon.gun_ultimategolddiggerii run return fail
scoreboard players operation @s weapon.gun_ultimategolddiggerii_clip_ammo = @s weapon.gun_ultimategolddiggerii_ammo
function weapon:range/gun/slot/count {gun:"ultimategolddiggerii"}

title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimategolddiggeriii_clip_ammo = clip_ammo weapon.gun_ultimategolddiggeriii
execute if score @s weapon.gun_ultimategolddiggeriii_ammo >= clip_ammo weapon.gun_ultimategolddiggeriii run function weapon:range/gun/slot/count {gun:"ultimategolddiggeriii"}
execute if score @s weapon.gun_ultimategolddiggeriii_ammo >= clip_ammo weapon.gun_ultimategolddiggeriii run return fail
scoreboard players operation @s weapon.gun_ultimategolddiggeriii_clip_ammo = @s weapon.gun_ultimategolddiggeriii_ammo
function weapon:range/gun/slot/count {gun:"ultimategolddiggeriii"}
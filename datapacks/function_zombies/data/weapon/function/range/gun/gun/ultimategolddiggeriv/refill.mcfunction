
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimategolddiggeriv_clip_ammo = clip_ammo weapon.gun_ultimategolddiggeriv
execute if score @s weapon.gun_ultimategolddiggeriv_ammo >= clip_ammo weapon.gun_ultimategolddiggeriv run function weapon:range/gun/slot/count {gun:"ultimategolddiggeriv"}
execute if score @s weapon.gun_ultimategolddiggeriv_ammo >= clip_ammo weapon.gun_ultimategolddiggeriv run return fail
scoreboard players operation @s weapon.gun_ultimategolddiggeriv_clip_ammo = @s weapon.gun_ultimategolddiggeriv_ammo
function weapon:range/gun/slot/count {gun:"ultimategolddiggeriv"}

title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimategolddigger_clip_ammo = clip_ammo weapon.gun_ultimategolddigger
execute if score @s weapon.gun_ultimategolddigger_ammo >= clip_ammo weapon.gun_ultimategolddigger run function weapon:range/gun/slot/count {gun:"ultimategolddigger"}
execute if score @s weapon.gun_ultimategolddigger_ammo >= clip_ammo weapon.gun_ultimategolddigger run return fail
scoreboard players operation @s weapon.gun_ultimategolddigger_clip_ammo = @s weapon.gun_ultimategolddigger_ammo
function weapon:range/gun/slot/count {gun:"ultimategolddigger"}
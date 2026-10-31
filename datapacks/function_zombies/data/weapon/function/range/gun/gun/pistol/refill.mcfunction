
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_pistol_clip_ammo = clip_ammo weapon.gun_pistol
execute if score @s weapon.gun_pistol_ammo >= clip_ammo weapon.gun_pistol run function weapon:range/gun/slot/count {gun:"pistol"}
execute if score @s weapon.gun_pistol_ammo >= clip_ammo weapon.gun_pistol run return fail
scoreboard players operation @s weapon.gun_pistol_clip_ammo = @s weapon.gun_pistol_ammo
function weapon:range/gun/slot/count {gun:"pistol"}
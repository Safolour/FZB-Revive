
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimateflamethrower_clip_ammo = clip_ammo weapon.gun_ultimateflamethrower
execute if score @s weapon.gun_ultimateflamethrower_ammo >= clip_ammo weapon.gun_ultimateflamethrower run function weapon:range/gun/slot/count {gun:"ultimateflamethrower"}
execute if score @s weapon.gun_ultimateflamethrower_ammo >= clip_ammo weapon.gun_ultimateflamethrower run return fail
scoreboard players operation @s weapon.gun_ultimateflamethrower_clip_ammo = @s weapon.gun_ultimateflamethrower_ammo
function weapon:range/gun/slot/count {gun:"ultimateflamethrower"}
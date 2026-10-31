
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimateashesflamethrower_clip_ammo = clip_ammo weapon.gun_ultimateashesflamethrower
execute if score @s weapon.gun_ultimateashesflamethrower_ammo >= clip_ammo weapon.gun_ultimateashesflamethrower run function weapon:range/gun/slot/count {gun:"ultimateashesflamethrower"}
execute if score @s weapon.gun_ultimateashesflamethrower_ammo >= clip_ammo weapon.gun_ultimateashesflamethrower run return fail
scoreboard players operation @s weapon.gun_ultimateashesflamethrower_clip_ammo = @s weapon.gun_ultimateashesflamethrower_ammo
function weapon:range/gun/slot/count {gun:"ultimateashesflamethrower"}
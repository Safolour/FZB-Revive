
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_flamethrower_clip_ammo = clip_ammo weapon.gun_flamethrower
execute if score @s weapon.gun_flamethrower_ammo >= clip_ammo weapon.gun_flamethrower run function weapon:range/gun/slot/count {gun:"flamethrower"}
execute if score @s weapon.gun_flamethrower_ammo >= clip_ammo weapon.gun_flamethrower run return fail
scoreboard players operation @s weapon.gun_flamethrower_clip_ammo = @s weapon.gun_flamethrower_ammo
function weapon:range/gun/slot/count {gun:"flamethrower"}

title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimateeldergun_clip_ammo = clip_ammo weapon.gun_ultimateeldergun
execute if score @s weapon.gun_ultimateeldergun_ammo >= clip_ammo weapon.gun_ultimateeldergun run function weapon:range/gun/slot/count {gun:"ultimateeldergun"}
execute if score @s weapon.gun_ultimateeldergun_ammo >= clip_ammo weapon.gun_ultimateeldergun run return fail
scoreboard players operation @s weapon.gun_ultimateeldergun_clip_ammo = @s weapon.gun_ultimateeldergun_ammo
function weapon:range/gun/slot/count {gun:"ultimateeldergun"}

title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimateshotgun_clip_ammo = clip_ammo weapon.gun_ultimateshotgun
execute if score @s weapon.gun_ultimateshotgun_ammo >= clip_ammo weapon.gun_ultimateshotgun run function weapon:range/gun/slot/count {gun:"ultimateshotgun"}
execute if score @s weapon.gun_ultimateshotgun_ammo >= clip_ammo weapon.gun_ultimateshotgun run return fail
scoreboard players operation @s weapon.gun_ultimateshotgun_clip_ammo = @s weapon.gun_ultimateshotgun_ammo
function weapon:range/gun/slot/count {gun:"ultimateshotgun"}
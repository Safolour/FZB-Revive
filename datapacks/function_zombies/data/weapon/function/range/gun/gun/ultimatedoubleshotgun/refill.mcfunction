
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimatedoubleshotgun_clip_ammo = clip_ammo weapon.gun_ultimatedoubleshotgun
execute if score @s weapon.gun_ultimatedoubleshotgun_ammo >= clip_ammo weapon.gun_ultimatedoubleshotgun run function weapon:range/gun/slot/count {gun:"ultimatedoubleshotgun"}
execute if score @s weapon.gun_ultimatedoubleshotgun_ammo >= clip_ammo weapon.gun_ultimatedoubleshotgun run return fail
scoreboard players operation @s weapon.gun_ultimatedoubleshotgun_clip_ammo = @s weapon.gun_ultimatedoubleshotgun_ammo
function weapon:range/gun/slot/count {gun:"ultimatedoubleshotgun"}
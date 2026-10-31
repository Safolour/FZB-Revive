
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_shotgun_clip_ammo = clip_ammo weapon.gun_shotgun
execute if score @s weapon.gun_shotgun_ammo >= clip_ammo weapon.gun_shotgun run function weapon:range/gun/slot/count {gun:"shotgun"}
execute if score @s weapon.gun_shotgun_ammo >= clip_ammo weapon.gun_shotgun run return fail
scoreboard players operation @s weapon.gun_shotgun_clip_ammo = @s weapon.gun_shotgun_ammo
function weapon:range/gun/slot/count {gun:"shotgun"}
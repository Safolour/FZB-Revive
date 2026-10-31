
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_musicgun_clip_ammo = clip_ammo weapon.gun_musicgun
execute if score @s weapon.gun_musicgun_ammo >= clip_ammo weapon.gun_musicgun run function weapon:range/gun/slot/count {gun:"musicgun"}
execute if score @s weapon.gun_musicgun_ammo >= clip_ammo weapon.gun_musicgun run return fail
scoreboard players operation @s weapon.gun_musicgun_clip_ammo = @s weapon.gun_musicgun_ammo
function weapon:range/gun/slot/count {gun:"musicgun"}
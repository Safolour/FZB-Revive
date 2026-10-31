
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_rainbowrifle_clip_ammo = clip_ammo weapon.gun_rainbowrifle
execute if score @s weapon.gun_rainbowrifle_ammo >= clip_ammo weapon.gun_rainbowrifle run function weapon:range/gun/slot/count {gun:"rainbowrifle"}
execute if score @s weapon.gun_rainbowrifle_ammo >= clip_ammo weapon.gun_rainbowrifle run return fail
scoreboard players operation @s weapon.gun_rainbowrifle_clip_ammo = @s weapon.gun_rainbowrifle_ammo
function weapon:range/gun/slot/count {gun:"rainbowrifle"}
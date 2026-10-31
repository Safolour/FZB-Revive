
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_rainbowsniper_clip_ammo = clip_ammo weapon.gun_rainbowsniper
execute if score @s weapon.gun_rainbowsniper_ammo >= clip_ammo weapon.gun_rainbowsniper run function weapon:range/gun/slot/count {gun:"rainbowsniper"}
execute if score @s weapon.gun_rainbowsniper_ammo >= clip_ammo weapon.gun_rainbowsniper run return fail
scoreboard players operation @s weapon.gun_rainbowsniper_clip_ammo = @s weapon.gun_rainbowsniper_ammo
function weapon:range/gun/slot/count {gun:"rainbowsniper"}
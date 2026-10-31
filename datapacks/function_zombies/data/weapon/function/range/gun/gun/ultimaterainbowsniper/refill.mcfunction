
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimaterainbowsniper_clip_ammo = clip_ammo weapon.gun_ultimaterainbowsniper
execute if score @s weapon.gun_ultimaterainbowsniper_ammo >= clip_ammo weapon.gun_ultimaterainbowsniper run function weapon:range/gun/slot/count {gun:"ultimaterainbowsniper"}
execute if score @s weapon.gun_ultimaterainbowsniper_ammo >= clip_ammo weapon.gun_ultimaterainbowsniper run return fail
scoreboard players operation @s weapon.gun_ultimaterainbowsniper_clip_ammo = @s weapon.gun_ultimaterainbowsniper_ammo
function weapon:range/gun/slot/count {gun:"ultimaterainbowsniper"}
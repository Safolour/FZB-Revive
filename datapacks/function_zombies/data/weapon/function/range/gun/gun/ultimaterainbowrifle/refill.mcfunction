
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimaterainbowrifle_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrifle
execute if score @s weapon.gun_ultimaterainbowrifle_ammo >= clip_ammo weapon.gun_ultimaterainbowrifle run function weapon:range/gun/slot/count {gun:"ultimaterainbowrifle"}
execute if score @s weapon.gun_ultimaterainbowrifle_ammo >= clip_ammo weapon.gun_ultimaterainbowrifle run return fail
scoreboard players operation @s weapon.gun_ultimaterainbowrifle_clip_ammo = @s weapon.gun_ultimaterainbowrifle_ammo
function weapon:range/gun/slot/count {gun:"ultimaterainbowrifle"}
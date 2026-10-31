
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimaterainbowrifleii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrifleii
execute if score @s weapon.gun_ultimaterainbowrifleii_ammo >= clip_ammo weapon.gun_ultimaterainbowrifleii run function weapon:range/gun/slot/count {gun:"ultimaterainbowrifleii"}
execute if score @s weapon.gun_ultimaterainbowrifleii_ammo >= clip_ammo weapon.gun_ultimaterainbowrifleii run return fail
scoreboard players operation @s weapon.gun_ultimaterainbowrifleii_clip_ammo = @s weapon.gun_ultimaterainbowrifleii_ammo
function weapon:range/gun/slot/count {gun:"ultimaterainbowrifleii"}
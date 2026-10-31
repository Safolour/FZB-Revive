
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_golddigger_clip_ammo = clip_ammo weapon.gun_golddigger
execute if score @s weapon.gun_golddigger_ammo >= clip_ammo weapon.gun_golddigger run function weapon:range/gun/slot/count {gun:"golddigger"}
execute if score @s weapon.gun_golddigger_ammo >= clip_ammo weapon.gun_golddigger run return fail
scoreboard players operation @s weapon.gun_golddigger_clip_ammo = @s weapon.gun_golddigger_ammo
function weapon:range/gun/slot/count {gun:"golddigger"}

title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimateairgun_clip_ammo = clip_ammo weapon.gun_ultimateairgun
execute if score @s weapon.gun_ultimateairgun_ammo >= clip_ammo weapon.gun_ultimateairgun run function weapon:range/gun/slot/count {gun:"ultimateairgun"}
execute if score @s weapon.gun_ultimateairgun_ammo >= clip_ammo weapon.gun_ultimateairgun run return fail
scoreboard players operation @s weapon.gun_ultimateairgun_clip_ammo = @s weapon.gun_ultimateairgun_ammo
function weapon:range/gun/slot/count {gun:"ultimateairgun"}
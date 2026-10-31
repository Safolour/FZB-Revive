
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_practicegun_clip_ammo = clip_ammo weapon.gun_practicegun
execute if score @s weapon.gun_practicegun_ammo >= clip_ammo weapon.gun_practicegun run function weapon:range/gun/slot/count {gun:"practicegun"}
execute if score @s weapon.gun_practicegun_ammo >= clip_ammo weapon.gun_practicegun run return fail
scoreboard players operation @s weapon.gun_practicegun_clip_ammo = @s weapon.gun_practicegun_ammo
function weapon:range/gun/slot/count {gun:"practicegun"}
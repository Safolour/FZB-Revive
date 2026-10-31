
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_doubleshotgun_clip_ammo = clip_ammo weapon.gun_doubleshotgun
execute if score @s weapon.gun_doubleshotgun_ammo >= clip_ammo weapon.gun_doubleshotgun run function weapon:range/gun/slot/count {gun:"doubleshotgun"}
execute if score @s weapon.gun_doubleshotgun_ammo >= clip_ammo weapon.gun_doubleshotgun run return fail
scoreboard players operation @s weapon.gun_doubleshotgun_clip_ammo = @s weapon.gun_doubleshotgun_ammo
function weapon:range/gun/slot/count {gun:"doubleshotgun"}
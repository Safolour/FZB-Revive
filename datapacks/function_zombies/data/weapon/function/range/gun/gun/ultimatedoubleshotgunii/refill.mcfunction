
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimatedoubleshotgunii_clip_ammo = clip_ammo weapon.gun_ultimatedoubleshotgunii
execute if score @s weapon.gun_ultimatedoubleshotgunii_ammo >= clip_ammo weapon.gun_ultimatedoubleshotgunii run function weapon:range/gun/slot/count {gun:"ultimatedoubleshotgunii"}
execute if score @s weapon.gun_ultimatedoubleshotgunii_ammo >= clip_ammo weapon.gun_ultimatedoubleshotgunii run return fail
scoreboard players operation @s weapon.gun_ultimatedoubleshotgunii_clip_ammo = @s weapon.gun_ultimatedoubleshotgunii_ammo
function weapon:range/gun/slot/count {gun:"ultimatedoubleshotgunii"}
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_exposedcoppergun_clip_ammo = clip_ammo weapon.gun_exposedcoppergun
execute if score @s weapon.gun_exposedcoppergun_ammo >= clip_ammo weapon.gun_exposedcoppergun run function weapon:range/gun/slot/count {gun:"exposedcoppergun"}
execute if score @s weapon.gun_exposedcoppergun_ammo >= clip_ammo weapon.gun_exposedcoppergun run return fail
scoreboard players operation @s weapon.gun_exposedcoppergun_clip_ammo = @s weapon.gun_exposedcoppergun_ammo
function weapon:range/gun/slot/count {gun:"exposedcoppergun"}

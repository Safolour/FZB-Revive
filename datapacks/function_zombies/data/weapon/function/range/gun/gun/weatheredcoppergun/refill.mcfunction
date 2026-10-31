title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_weatheredcoppergun_clip_ammo = clip_ammo weapon.gun_weatheredcoppergun
execute if score @s weapon.gun_weatheredcoppergun_ammo >= clip_ammo weapon.gun_weatheredcoppergun run function weapon:range/gun/slot/count {gun:"weatheredcoppergun"}
execute if score @s weapon.gun_weatheredcoppergun_ammo >= clip_ammo weapon.gun_weatheredcoppergun run return fail
scoreboard players operation @s weapon.gun_weatheredcoppergun_clip_ammo = @s weapon.gun_weatheredcoppergun_ammo
function weapon:range/gun/slot/count {gun:"weatheredcoppergun"}

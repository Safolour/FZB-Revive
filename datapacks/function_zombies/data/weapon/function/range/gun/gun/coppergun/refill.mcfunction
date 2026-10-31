title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_coppergun_clip_ammo = clip_ammo weapon.gun_coppergun
execute if score @s weapon.gun_coppergun_ammo >= clip_ammo weapon.gun_coppergun run function weapon:range/gun/slot/count {gun:"coppergun"}
execute if score @s weapon.gun_coppergun_ammo >= clip_ammo weapon.gun_coppergun run return fail
scoreboard players operation @s weapon.gun_coppergun_clip_ammo = @s weapon.gun_coppergun_ammo
function weapon:range/gun/slot/count {gun:"coppergun"}

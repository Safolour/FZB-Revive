title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimatelament_clip_ammo = clip_ammo weapon.gun_ultimatelament
execute if score @s weapon.gun_ultimatelament_ammo >= clip_ammo weapon.gun_ultimatelament run function weapon:range/gun/slot/count {gun:"ultimatelament"}
execute if score @s weapon.gun_ultimatelament_ammo >= clip_ammo weapon.gun_ultimatelament run return fail
scoreboard players operation @s weapon.gun_ultimatelament_clip_ammo = @s weapon.gun_ultimatelament_ammo
function weapon:range/gun/slot/count {gun:"ultimatelament"}

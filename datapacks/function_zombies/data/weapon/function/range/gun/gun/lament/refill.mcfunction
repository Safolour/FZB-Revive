title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_lament_clip_ammo = clip_ammo weapon.gun_lament
execute if score @s weapon.gun_lament_ammo >= clip_ammo weapon.gun_lament run function weapon:range/gun/slot/count {gun:"lament"}
execute if score @s weapon.gun_lament_ammo >= clip_ammo weapon.gun_lament run return fail
scoreboard players operation @s weapon.gun_lament_clip_ammo = @s weapon.gun_lament_ammo
function weapon:range/gun/slot/count {gun:"lament"}


title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_blueprint_clip_ammo = clip_ammo weapon.gun_blueprint
execute if score @s weapon.gun_blueprint_ammo >= clip_ammo weapon.gun_blueprint run function weapon:range/gun/slot/count {gun:"blueprint"}
execute if score @s weapon.gun_blueprint_ammo >= clip_ammo weapon.gun_blueprint run return fail
scoreboard players operation @s weapon.gun_blueprint_clip_ammo = @s weapon.gun_blueprint_ammo
function weapon:range/gun/slot/count {gun:"blueprint"}
title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_aurora_clip_ammo = clip_ammo weapon.gun_aurora
execute if score @s weapon.gun_aurora_ammo >= clip_ammo weapon.gun_aurora run function weapon:range/gun/slot/count {gun:"aurora"}
execute if score @s weapon.gun_aurora_ammo >= clip_ammo weapon.gun_aurora run return fail
scoreboard players operation @s weapon.gun_aurora_clip_ammo = @s weapon.gun_aurora_ammo
function weapon:range/gun/slot/count {gun:"aurora"}

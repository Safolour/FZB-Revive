title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_paradox_clip_ammo = clip_ammo weapon.gun_paradox
execute if score @s weapon.gun_paradox_ammo >= clip_ammo weapon.gun_paradox run function weapon:range/gun/slot/count {gun:"paradox"}
execute if score @s weapon.gun_paradox_ammo >= clip_ammo weapon.gun_paradox run return fail
scoreboard players operation @s weapon.gun_paradox_clip_ammo = @s weapon.gun_paradox_ammo
function weapon:range/gun/slot/count {gun:"paradox"}
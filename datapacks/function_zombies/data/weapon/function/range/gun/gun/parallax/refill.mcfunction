title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_parallax_clip_ammo = clip_ammo weapon.gun_parallax
execute if score @s weapon.gun_parallax_ammo >= clip_ammo weapon.gun_parallax run function weapon:range/gun/slot/count {gun:"parallax"}
execute if score @s weapon.gun_parallax_ammo >= clip_ammo weapon.gun_parallax run return fail
scoreboard players operation @s weapon.gun_parallax_clip_ammo = @s weapon.gun_parallax_ammo
function weapon:range/gun/slot/count {gun:"parallax"}

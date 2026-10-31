title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_parallax
execute if score @s weapon.gun_parallax_ammo >= clip_ammo weapon.gun_parallax run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_parallax_ammo >= clip_ammo weapon.gun_parallax run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_parallax_ammo
function weapon:range/skill/skill/echo/count

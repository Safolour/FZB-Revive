title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_exposedcoppergun
execute if score @s weapon.gun_exposedcoppergun_ammo >= clip_ammo weapon.gun_exposedcoppergun run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_exposedcoppergun_ammo >= clip_ammo weapon.gun_exposedcoppergun run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_exposedcoppergun_ammo
function weapon:range/skill/skill/echo/count

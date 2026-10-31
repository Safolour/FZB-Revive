title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimatemusicgun
execute if score @s weapon.gun_ultimatemusicgun_ammo >= clip_ammo weapon.gun_ultimatemusicgun run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimatemusicgun_ammo >= clip_ammo weapon.gun_ultimatemusicgun run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimatemusicgun_ammo
function weapon:range/skill/skill/echo/count

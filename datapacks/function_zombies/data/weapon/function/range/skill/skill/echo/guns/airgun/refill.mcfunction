title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_airgun
execute if score @s weapon.gun_airgun_ammo >= clip_ammo weapon.gun_airgun run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_airgun_ammo >= clip_ammo weapon.gun_airgun run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_airgun_ammo
function weapon:range/skill/skill/echo/count

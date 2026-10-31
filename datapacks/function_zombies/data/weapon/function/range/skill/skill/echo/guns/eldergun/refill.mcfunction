title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_eldergun
execute if score @s weapon.gun_eldergun_ammo >= clip_ammo weapon.gun_eldergun run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_eldergun_ammo >= clip_ammo weapon.gun_eldergun run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_eldergun_ammo
function weapon:range/skill/skill/echo/count

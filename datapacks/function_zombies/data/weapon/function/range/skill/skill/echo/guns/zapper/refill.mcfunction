title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_zapper
execute if score @s weapon.gun_zapper_ammo >= clip_ammo weapon.gun_zapper run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_zapper_ammo >= clip_ammo weapon.gun_zapper run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_zapper_ammo
function weapon:range/skill/skill/echo/count

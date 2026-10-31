title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_aurora
execute if score @s weapon.gun_aurora_ammo >= clip_ammo weapon.gun_aurora run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_aurora_ammo >= clip_ammo weapon.gun_aurora run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_aurora_ammo
function weapon:range/skill/skill/echo/count

title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ashesflamethrower
execute if score @s weapon.gun_ashesflamethrower_ammo >= clip_ammo weapon.gun_ashesflamethrower run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ashesflamethrower_ammo >= clip_ammo weapon.gun_ashesflamethrower run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ashesflamethrower_ammo
function weapon:range/skill/skill/echo/count

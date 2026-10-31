title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimatesoulflamethrower
execute if score @s weapon.gun_ultimatesoulflamethrower_ammo >= clip_ammo weapon.gun_ultimatesoulflamethrower run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimatesoulflamethrower_ammo >= clip_ammo weapon.gun_ultimatesoulflamethrower run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimatesoulflamethrower_ammo
function weapon:range/skill/skill/echo/count

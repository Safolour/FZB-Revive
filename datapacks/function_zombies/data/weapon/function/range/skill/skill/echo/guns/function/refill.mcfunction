title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_function
execute if score @s weapon.gun_function_ammo >= clip_ammo weapon.gun_function run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_function_ammo >= clip_ammo weapon.gun_function run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_function_ammo
function weapon:range/skill/skill/echo/count

title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimateashesflamethrower
execute if score @s weapon.gun_ultimateashesflamethrower_ammo >= clip_ammo weapon.gun_ultimateashesflamethrower run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimateashesflamethrower_ammo >= clip_ammo weapon.gun_ultimateashesflamethrower run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimateashesflamethrower_ammo
function weapon:range/skill/skill/echo/count

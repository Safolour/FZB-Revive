title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_pistol
execute if score @s weapon.gun_pistol_ammo >= clip_ammo weapon.gun_pistol run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_pistol_ammo >= clip_ammo weapon.gun_pistol run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_pistol_ammo
function weapon:range/skill/skill/echo/count

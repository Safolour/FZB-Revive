title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimatepistol
execute if score @s weapon.gun_ultimatepistol_ammo >= clip_ammo weapon.gun_ultimatepistol run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimatepistol_ammo >= clip_ammo weapon.gun_ultimatepistol run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimatepistol_ammo
function weapon:range/skill/skill/echo/count

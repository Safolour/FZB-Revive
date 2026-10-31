title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimatesnowballcannon
execute if score @s weapon.gun_ultimatesnowballcannon_ammo >= clip_ammo weapon.gun_ultimatesnowballcannon run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimatesnowballcannon_ammo >= clip_ammo weapon.gun_ultimatesnowballcannon run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimatesnowballcannon_ammo
function weapon:range/skill/skill/echo/count

title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimatezapper
execute if score @s weapon.gun_ultimatezapper_ammo >= clip_ammo weapon.gun_ultimatezapper run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimatezapper_ammo >= clip_ammo weapon.gun_ultimatezapper run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimatezapper_ammo
function weapon:range/skill/skill/echo/count

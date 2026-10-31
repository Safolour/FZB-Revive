title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimateseason_summer
execute if score @s weapon.gun_ultimateseason_summer_ammo >= clip_ammo weapon.gun_ultimateseason_summer run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimateseason_summer_ammo >= clip_ammo weapon.gun_ultimateseason_summer run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimateseason_summer_ammo
function weapon:range/skill/skill/echo/count

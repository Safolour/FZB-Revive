title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_soaker
execute if score @s weapon.gun_soaker_ammo >= clip_ammo weapon.gun_soaker run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_soaker_ammo >= clip_ammo weapon.gun_soaker run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_soaker_ammo
function weapon:range/skill/skill/echo/count

title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_machinegun
execute if score @s weapon.gun_machinegun_ammo >= clip_ammo weapon.gun_machinegun run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_machinegun_ammo >= clip_ammo weapon.gun_machinegun run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_machinegun_ammo
function weapon:range/skill/skill/echo/count

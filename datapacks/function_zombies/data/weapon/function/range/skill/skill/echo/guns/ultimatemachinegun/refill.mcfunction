title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimatemachinegun
execute if score @s weapon.gun_ultimatemachinegun_ammo >= clip_ammo weapon.gun_ultimatemachinegun run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimatemachinegun_ammo >= clip_ammo weapon.gun_ultimatemachinegun run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimatemachinegun_ammo
function weapon:range/skill/skill/echo/count

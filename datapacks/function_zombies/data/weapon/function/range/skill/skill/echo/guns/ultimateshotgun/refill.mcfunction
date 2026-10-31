title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimateshotgun
execute if score @s weapon.gun_ultimateshotgun_ammo >= clip_ammo weapon.gun_ultimateshotgun run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimateshotgun_ammo >= clip_ammo weapon.gun_ultimateshotgun run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimateshotgun_ammo
function weapon:range/skill/skill/echo/count

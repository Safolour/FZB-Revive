title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_rainbowshotgun
execute if score @s weapon.gun_rainbowshotgun_ammo >= clip_ammo weapon.gun_rainbowshotgun run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_rainbowshotgun_ammo >= clip_ammo weapon.gun_rainbowshotgun run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_rainbowshotgun_ammo
function weapon:range/skill/skill/echo/count

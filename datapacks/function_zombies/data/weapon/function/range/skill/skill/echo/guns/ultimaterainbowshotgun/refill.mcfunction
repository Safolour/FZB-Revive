title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimaterainbowshotgun
execute if score @s weapon.gun_ultimaterainbowshotgun_ammo >= clip_ammo weapon.gun_ultimaterainbowshotgun run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimaterainbowshotgun_ammo >= clip_ammo weapon.gun_ultimaterainbowshotgun run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimaterainbowshotgun_ammo
function weapon:range/skill/skill/echo/count

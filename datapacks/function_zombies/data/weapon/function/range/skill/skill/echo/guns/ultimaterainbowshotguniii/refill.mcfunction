title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimaterainbowshotguniii
execute if score @s weapon.gun_ultimaterainbowshotguniii_ammo >= clip_ammo weapon.gun_ultimaterainbowshotguniii run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimaterainbowshotguniii_ammo >= clip_ammo weapon.gun_ultimaterainbowshotguniii run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimaterainbowshotguniii_ammo
function weapon:range/skill/skill/echo/count

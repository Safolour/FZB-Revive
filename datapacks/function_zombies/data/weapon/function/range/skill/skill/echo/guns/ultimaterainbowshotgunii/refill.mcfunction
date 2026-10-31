title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimaterainbowshotgunii
execute if score @s weapon.gun_ultimaterainbowshotgunii_ammo >= clip_ammo weapon.gun_ultimaterainbowshotgunii run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimaterainbowshotgunii_ammo >= clip_ammo weapon.gun_ultimaterainbowshotgunii run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimaterainbowshotgunii_ammo
function weapon:range/skill/skill/echo/count

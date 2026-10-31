title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrocketlauncher
execute if score @s weapon.gun_ultimaterainbowrocketlauncher_ammo >= clip_ammo weapon.gun_ultimaterainbowrocketlauncher run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimaterainbowrocketlauncher_ammo >= clip_ammo weapon.gun_ultimaterainbowrocketlauncher run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimaterainbowrocketlauncher_ammo
function weapon:range/skill/skill/echo/count

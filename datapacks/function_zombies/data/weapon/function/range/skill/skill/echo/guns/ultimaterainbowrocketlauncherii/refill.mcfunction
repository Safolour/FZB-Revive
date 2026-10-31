title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrocketlauncherii
execute if score @s weapon.gun_ultimaterainbowrocketlauncherii_ammo >= clip_ammo weapon.gun_ultimaterainbowrocketlauncherii run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimaterainbowrocketlauncherii_ammo >= clip_ammo weapon.gun_ultimaterainbowrocketlauncherii run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimaterainbowrocketlauncherii_ammo
function weapon:range/skill/skill/echo/count

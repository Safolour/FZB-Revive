title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimaterainbowsniperii
execute if score @s weapon.gun_ultimaterainbowsniperii_ammo >= clip_ammo weapon.gun_ultimaterainbowsniperii run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimaterainbowsniperii_ammo >= clip_ammo weapon.gun_ultimaterainbowsniperii run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimaterainbowsniperii_ammo
function weapon:range/skill/skill/echo/count

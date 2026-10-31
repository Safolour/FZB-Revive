title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_rifle
execute if score @s weapon.gun_rifle_ammo >= clip_ammo weapon.gun_rifle run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_rifle_ammo >= clip_ammo weapon.gun_rifle run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_rifle_ammo
function weapon:range/skill/skill/echo/count

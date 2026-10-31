title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimatedoubleshotguniii
execute if score @s weapon.gun_ultimatedoubleshotguniii_ammo >= clip_ammo weapon.gun_ultimatedoubleshotguniii run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimatedoubleshotguniii_ammo >= clip_ammo weapon.gun_ultimatedoubleshotguniii run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimatedoubleshotguniii_ammo
function weapon:range/skill/skill/echo/count

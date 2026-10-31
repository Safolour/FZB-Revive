title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimatepracticegun
execute if score @s weapon.gun_ultimatepracticegun_ammo >= clip_ammo weapon.gun_ultimatepracticegun run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimatepracticegun_ammo >= clip_ammo weapon.gun_ultimatepracticegun run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimatepracticegun_ammo
function weapon:range/skill/skill/echo/count

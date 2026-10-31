title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_season_spring
execute if score @s weapon.gun_season_spring_ammo >= clip_ammo weapon.gun_season_spring run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_season_spring_ammo >= clip_ammo weapon.gun_season_spring run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_season_spring_ammo
function weapon:range/skill/skill/echo/count

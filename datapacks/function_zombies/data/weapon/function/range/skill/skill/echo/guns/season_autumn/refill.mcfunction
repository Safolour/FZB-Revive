title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_season_autumn
execute if score @s weapon.gun_season_autumn_ammo >= clip_ammo weapon.gun_season_autumn run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_season_autumn_ammo >= clip_ammo weapon.gun_season_autumn run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_season_autumn_ammo
function weapon:range/skill/skill/echo/count

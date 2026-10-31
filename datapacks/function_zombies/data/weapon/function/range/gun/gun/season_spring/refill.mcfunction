title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_season_spring_clip_ammo = clip_ammo weapon.gun_season_spring
execute if score @s weapon.gun_season_spring_ammo >= clip_ammo weapon.gun_season_spring run function weapon:range/gun/slot/count {gun:"season_spring"}
execute if score @s weapon.gun_season_spring_ammo >= clip_ammo weapon.gun_season_spring run return fail
scoreboard players operation @s weapon.gun_season_spring_clip_ammo = @s weapon.gun_season_spring_ammo
function weapon:range/gun/slot/count {gun:"season_spring"}

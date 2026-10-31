title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_season_winter_clip_ammo = clip_ammo weapon.gun_season_winter
execute if score @s weapon.gun_season_winter_ammo >= clip_ammo weapon.gun_season_winter run function weapon:range/gun/slot/count {gun:"season_winter"}
execute if score @s weapon.gun_season_winter_ammo >= clip_ammo weapon.gun_season_winter run return fail
scoreboard players operation @s weapon.gun_season_winter_clip_ammo = @s weapon.gun_season_winter_ammo
function weapon:range/gun/slot/count {gun:"season_winter"}

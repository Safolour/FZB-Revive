execute if score @s weapon.gun_season_summer_heat matches ..4 run return run playsound block.note_block.bass player @s ~ ~ ~ 0.6 0.5
execute if entity @s[scores={weapon.gun_season_summer_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_season_summer_ammo=..9}] run return fail
execute if entity @s[scores={weapon.gun_season_summer_clip_ammo=..9}] run return fail
scoreboard players remove @s weapon.gun_season_summer_ammo 10
scoreboard players remove @s weapon.gun_season_summer_clip_ammo 10
scoreboard players set @s weapon.gun_season_summer_heat 0
function weapon:range/gun/slot/count {gun:"season_summer"}
scoreboard players operation @s weapon.use = uuid weapon.gun_season_summer
scoreboard players set #burst weapon.state 5
function weapon:range/gun/gun/season_summer/burst_fire
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_season_summer_clip_ammo=0}] run function weapon:range/gun/gun/season_summer/reload

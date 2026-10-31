scoreboard players remove @s weapon.gun_season_autumn_ammo 1
scoreboard players remove @s weapon.gun_season_autumn_clip_ammo 1
function weapon:range/gun/slot/count {gun:"season_autumn"}
function weapon:range/gun/slot/xp_lv {gun:"season_autumn"}
execute unless score @s weapon.gun_season_autumn_rate0 = @s weapon.gun_season_autumn_rate0 run scoreboard players operation @s weapon.gun_season_autumn_rate0 = rate weapon.gun_season_autumn
scoreboard players operation @s weapon.gun_season_autumn_rate = @s weapon.gun_season_autumn_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_season_autumn
playsound block.gravel.break player @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/season_autumn/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_season_autumn matches 1.. run function weapon:range/skill/skill/echo/record {gun:"season_autumn"}
# END ECHO RECORD

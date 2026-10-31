scoreboard players remove @s weapon.gun_season_spring_ammo 1
scoreboard players remove @s weapon.gun_season_spring_clip_ammo 1
function weapon:range/gun/slot/count {gun:"season_spring"}
function weapon:range/gun/slot/xp_lv {gun:"season_spring"}
execute unless score @s weapon.gun_season_spring_rate0 = @s weapon.gun_season_spring_rate0 run scoreboard players operation @s weapon.gun_season_spring_rate0 = rate weapon.gun_season_spring
scoreboard players operation @s weapon.gun_season_spring_rate = @s weapon.gun_season_spring_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_season_spring
playsound block.cherry_leaves.break player @a ~ ~ ~ 0.5 1.6
function weapon:range/gun/gun/season_spring/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_season_spring matches 1.. run function weapon:range/skill/skill/echo/record {gun:"season_spring"}
# END ECHO RECORD

scoreboard players remove @s weapon.gun_parallax_ammo 1
scoreboard players remove @s weapon.gun_parallax_clip_ammo 1
function weapon:range/gun/slot/count {gun:"parallax"}
function weapon:range/gun/slot/xp_lv {gun:"parallax"}
execute unless score @s weapon.gun_parallax_rate0 = @s weapon.gun_parallax_rate0 run scoreboard players operation @s weapon.gun_parallax_rate0 = rate weapon.gun_parallax
scoreboard players operation @s weapon.gun_parallax_rate = @s weapon.gun_parallax_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_parallax

function weapon:range/gun/gun/parallax/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_parallax matches 1.. run function weapon:range/skill/skill/echo/record {gun:"parallax"}
# END ECHO RECORD

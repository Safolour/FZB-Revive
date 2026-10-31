scoreboard players remove @s weapon.gun_eldergun_ammo 1
scoreboard players remove @s weapon.gun_eldergun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"eldergun"}
function weapon:range/gun/slot/xp_lv {gun:"eldergun"}
execute unless score @s weapon.gun_eldergun_rate0 = @s weapon.gun_eldergun_rate0 run scoreboard players operation @s weapon.gun_eldergun_rate0 = rate weapon.gun_eldergun
scoreboard players operation @s weapon.gun_eldergun_rate = @s weapon.gun_eldergun_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_eldergun
playsound entity.firework_rocket.blast_far record @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/eldergun/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_eldergun matches 1.. run function weapon:range/skill/skill/echo/record {gun:"eldergun"}
# END ECHO RECORD

scoreboard players remove @s weapon.gun_practicegun_ammo 1
scoreboard players remove @s weapon.gun_practicegun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"practicegun"}
function weapon:range/gun/slot/xp_lv {gun:"practicegun"}
execute unless score @s weapon.gun_practicegun_rate0 = @s weapon.gun_practicegun_rate0 run scoreboard players operation @s weapon.gun_practicegun_rate0 = rate weapon.gun_practicegun
scoreboard players operation @s weapon.gun_practicegun_rate = @s weapon.gun_practicegun_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_practicegun
playsound entity.iron_golem.hurt record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/practicegun/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_practicegun matches 1.. run function weapon:range/skill/skill/echo/record {gun:"practicegun"}
# END ECHO RECORD

scoreboard players remove @s weapon.gun_ultimatepracticegun_ammo 1
scoreboard players remove @s weapon.gun_ultimatepracticegun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimatepracticegun"}
function weapon:range/gun/slot/xp_lv {gun:"ultimatepracticegun"}
execute unless score @s weapon.gun_ultimatepracticegun_rate0 = @s weapon.gun_ultimatepracticegun_rate0 run scoreboard players operation @s weapon.gun_ultimatepracticegun_rate0 = rate weapon.gun_ultimatepracticegun
scoreboard players operation @s weapon.gun_ultimatepracticegun_rate = @s weapon.gun_ultimatepracticegun_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatepracticegun
playsound entity.iron_golem.hurt record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimatepracticegun/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"ultimatepracticegun"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimatepracticegun matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimatepracticegun"}
# END ECHO RECORD

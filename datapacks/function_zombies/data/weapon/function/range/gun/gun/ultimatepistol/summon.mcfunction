scoreboard players remove @s weapon.gun_ultimatepistol_ammo 1
scoreboard players remove @s weapon.gun_ultimatepistol_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimatepistol"}
function weapon:range/gun/slot/xp_lv {gun:"ultimatepistol"}
execute unless score @s weapon.gun_ultimatepistol_rate0 = @s weapon.gun_ultimatepistol_rate0 run scoreboard players operation @s weapon.gun_ultimatepistol_rate0 = rate weapon.gun_ultimatepistol
scoreboard players operation @s weapon.gun_ultimatepistol_rate = @s weapon.gun_ultimatepistol_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatepistol
playsound entity.iron_golem.hurt record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimatepistol/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"ultimatepistol"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimatepistol matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimatepistol"}
# END ECHO RECORD

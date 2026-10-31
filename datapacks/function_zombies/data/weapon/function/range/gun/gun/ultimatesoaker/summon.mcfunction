scoreboard players remove @s weapon.gun_ultimatesoaker_ammo 1
scoreboard players remove @s weapon.gun_ultimatesoaker_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimatesoaker"}
function weapon:range/gun/slot/xp_lv {gun:"ultimatesoaker"}
execute unless score @s weapon.gun_ultimatesoaker_rate0 = @s weapon.gun_ultimatesoaker_rate0 run scoreboard players operation @s weapon.gun_ultimatesoaker_rate0 = rate weapon.gun_ultimatesoaker
scoreboard players operation @s weapon.gun_ultimatesoaker_rate = @s weapon.gun_ultimatesoaker_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatesoaker
playsound entity.slime.attack record @a ~ ~ ~ 1 1.25 0
function weapon:range/gun/gun/ultimatesoaker/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimatesoaker matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimatesoaker"}
# END ECHO RECORD

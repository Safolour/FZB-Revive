scoreboard players remove @s weapon.gun_soaker_ammo 1
scoreboard players remove @s weapon.gun_soaker_clip_ammo 1
function weapon:range/gun/slot/count {gun:"soaker"}
function weapon:range/gun/slot/xp_lv {gun:"soaker"}
execute unless score @s weapon.gun_soaker_rate0 = @s weapon.gun_soaker_rate0 run scoreboard players operation @s weapon.gun_soaker_rate0 = rate weapon.gun_soaker
scoreboard players operation @s weapon.gun_soaker_rate = @s weapon.gun_soaker_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_soaker
playsound entity.slime.attack record @a ~ ~ ~ 1 1.25 0
function weapon:range/gun/gun/soaker/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_soaker matches 1.. run function weapon:range/skill/skill/echo/record {gun:"soaker"}
# END ECHO RECORD

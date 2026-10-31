scoreboard players remove @s weapon.gun_ultimatemagnum_ammo 1
scoreboard players remove @s weapon.gun_ultimatemagnum_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimatemagnum"}
function weapon:range/gun/slot/xp_lv {gun:"ultimatemagnum"}
execute unless score @s weapon.gun_ultimatemagnum_rate0 = @s weapon.gun_ultimatemagnum_rate0 run scoreboard players operation @s weapon.gun_ultimatemagnum_rate0 = rate weapon.gun_ultimatemagnum
scoreboard players operation @s weapon.gun_ultimatemagnum_rate = @s weapon.gun_ultimatemagnum_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatemagnum
playsound entity.firework_rocket.large_blast_far player @a ~ ~ ~ 1 1 0
function weapon:range/gun/gun/ultimatemagnum/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimatemagnum matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimatemagnum"}
# END ECHO RECORD

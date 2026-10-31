scoreboard players remove @s weapon.gun_ultimatezapper_ammo 1
scoreboard players remove @s weapon.gun_ultimatezapper_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimatezapper"}
function weapon:range/gun/slot/xp_lv {gun:"ultimatezapper"}
execute unless score @s weapon.gun_ultimatezapper_rate0 = @s weapon.gun_ultimatezapper_rate0 run scoreboard players operation @s weapon.gun_ultimatezapper_rate0 = rate weapon.gun_ultimatezapper
scoreboard players operation @s weapon.gun_ultimatezapper_rate = @s weapon.gun_ultimatezapper_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatezapper
playsound item.flintandsteel.use record @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/ultimatezapper/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimatezapper matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimatezapper"}
# END ECHO RECORD

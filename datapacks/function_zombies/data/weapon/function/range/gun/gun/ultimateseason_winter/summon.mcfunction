scoreboard players remove @s weapon.gun_ultimateseason_winter_ammo 1
scoreboard players remove @s weapon.gun_ultimateseason_winter_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimateseason_winter"}
function weapon:range/gun/slot/xp_lv {gun:"ultimateseason_winter"}
execute unless score @s weapon.gun_ultimateseason_winter_rate0 = @s weapon.gun_ultimateseason_winter_rate0 run scoreboard players operation @s weapon.gun_ultimateseason_winter_rate0 = rate weapon.gun_ultimateseason_winter
scoreboard players operation @s weapon.gun_ultimateseason_winter_rate = @s weapon.gun_ultimateseason_winter_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimateseason_winter
playsound entity.snowball.throw player @a ~ ~ ~ 1 0.7
function weapon:range/gun/gun/ultimateseason_winter/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimateseason_winter matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimateseason_winter"}
# END ECHO RECORD

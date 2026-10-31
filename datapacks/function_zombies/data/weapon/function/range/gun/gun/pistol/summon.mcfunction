scoreboard players remove @s weapon.gun_pistol_ammo 1
scoreboard players remove @s weapon.gun_pistol_clip_ammo 1
function weapon:range/gun/slot/count {gun:"pistol"}
function weapon:range/gun/slot/xp_lv {gun:"pistol"}
execute unless score @s weapon.gun_pistol_rate0 = @s weapon.gun_pistol_rate0 run scoreboard players operation @s weapon.gun_pistol_rate0 = rate weapon.gun_pistol
scoreboard players operation @s weapon.gun_pistol_rate = @s weapon.gun_pistol_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_pistol
playsound entity.iron_golem.hurt record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/pistol/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_pistol matches 1.. run function weapon:range/skill/skill/echo/record {gun:"pistol"}
# END ECHO RECORD

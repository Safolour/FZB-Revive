scoreboard players remove @s weapon.gun_ultimaterainbowrifleiii_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowrifleiii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowrifleiii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowrifleiii"}
execute unless score @s weapon.gun_ultimaterainbowrifleiii_rate0 = @s weapon.gun_ultimaterainbowrifleiii_rate0 run scoreboard players operation @s weapon.gun_ultimaterainbowrifleiii_rate0 = rate weapon.gun_ultimaterainbowrifleiii
scoreboard players operation @s weapon.gun_ultimaterainbowrifleiii_rate = @s weapon.gun_ultimaterainbowrifleiii_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowrifleiii
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimaterainbowrifleiii/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"ultimaterainbowrifleiii"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimaterainbowrifleiii matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimaterainbowrifleiii"}
# END ECHO RECORD

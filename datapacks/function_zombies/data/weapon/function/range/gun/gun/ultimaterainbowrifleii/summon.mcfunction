scoreboard players remove @s weapon.gun_ultimaterainbowrifleii_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowrifleii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowrifleii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowrifleii"}
execute unless score @s weapon.gun_ultimaterainbowrifleii_rate0 = @s weapon.gun_ultimaterainbowrifleii_rate0 run scoreboard players operation @s weapon.gun_ultimaterainbowrifleii_rate0 = rate weapon.gun_ultimaterainbowrifleii
scoreboard players operation @s weapon.gun_ultimaterainbowrifleii_rate = @s weapon.gun_ultimaterainbowrifleii_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowrifleii
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimaterainbowrifleii/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"ultimaterainbowrifleii"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimaterainbowrifleii matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimaterainbowrifleii"}
# END ECHO RECORD

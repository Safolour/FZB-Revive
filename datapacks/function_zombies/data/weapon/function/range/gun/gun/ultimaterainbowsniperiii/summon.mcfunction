execute unless score @s weapon.gun_ultimaterainbowsniperiii_ammo matches 1.. run return 0
execute unless score @s weapon.gun_ultimaterainbowsniperiii_clip_ammo matches 1.. run return 0
scoreboard players remove @s weapon.gun_ultimaterainbowsniperiii_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowsniperiii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowsniperiii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowsniperiii"}
execute unless score @s weapon.gun_ultimaterainbowsniperiii_rate0 = @s weapon.gun_ultimaterainbowsniperiii_rate0 run scoreboard players operation @s weapon.gun_ultimaterainbowsniperiii_rate0 = rate weapon.gun_ultimaterainbowsniperiii
scoreboard players operation @s weapon.gun_ultimaterainbowsniperiii_rate = @s weapon.gun_ultimaterainbowsniperiii_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowsniperiii
playsound entity.firework_rocket.blast_far record @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/ultimaterainbowsniperiii/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"ultimaterainbowsniperiii"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimaterainbowsniperiii matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimaterainbowsniperiii"}
# END ECHO RECORD

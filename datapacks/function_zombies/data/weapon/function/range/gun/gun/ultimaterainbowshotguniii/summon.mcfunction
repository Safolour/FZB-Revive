scoreboard players remove @s weapon.gun_ultimaterainbowshotguniii_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowshotguniii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowshotguniii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowshotguniii"}
execute unless score @s weapon.gun_ultimaterainbowshotguniii_rate0 = @s weapon.gun_ultimaterainbowshotguniii_rate0 run scoreboard players operation @s weapon.gun_ultimaterainbowshotguniii_rate0 = rate weapon.gun_ultimaterainbowshotguniii
scoreboard players operation @s weapon.gun_ultimaterainbowshotguniii_rate = @s weapon.gun_ultimaterainbowshotguniii_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowshotguniii
playsound entity.generic.explode player @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimaterainbowshotguniii/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"ultimaterainbowshotguniii"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimaterainbowshotguniii matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimaterainbowshotguniii"}
# END ECHO RECORD

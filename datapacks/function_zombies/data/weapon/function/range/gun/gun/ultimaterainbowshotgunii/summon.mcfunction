scoreboard players remove @s weapon.gun_ultimaterainbowshotgunii_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowshotgunii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowshotgunii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowshotgunii"}
execute unless score @s weapon.gun_ultimaterainbowshotgunii_rate0 = @s weapon.gun_ultimaterainbowshotgunii_rate0 run scoreboard players operation @s weapon.gun_ultimaterainbowshotgunii_rate0 = rate weapon.gun_ultimaterainbowshotgunii
scoreboard players operation @s weapon.gun_ultimaterainbowshotgunii_rate = @s weapon.gun_ultimaterainbowshotgunii_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowshotgunii
playsound entity.generic.explode player @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimaterainbowshotgunii/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"ultimaterainbowshotgunii"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimaterainbowshotgunii matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimaterainbowshotgunii"}
# END ECHO RECORD

scoreboard players remove @s weapon.gun_ultimaterainbowshotgun_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowshotgun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowshotgun"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowshotgun"}
execute unless score @s weapon.gun_ultimaterainbowshotgun_rate0 = @s weapon.gun_ultimaterainbowshotgun_rate0 run scoreboard players operation @s weapon.gun_ultimaterainbowshotgun_rate0 = rate weapon.gun_ultimaterainbowshotgun
scoreboard players operation @s weapon.gun_ultimaterainbowshotgun_rate = @s weapon.gun_ultimaterainbowshotgun_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowshotgun
playsound entity.generic.explode player @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimaterainbowshotgun/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"ultimaterainbowshotgun"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimaterainbowshotgun matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimaterainbowshotgun"}
# END ECHO RECORD

scoreboard players remove @s weapon.gun_golddigger_ammo 1
scoreboard players remove @s weapon.gun_golddigger_clip_ammo 1
function weapon:range/gun/slot/count {gun:"golddigger"}
function weapon:range/gun/slot/xp_lv {gun:"golddigger"}
execute unless score @s weapon.gun_golddigger_rate0 = @s weapon.gun_golddigger_rate0 run scoreboard players operation @s weapon.gun_golddigger_rate0 = rate weapon.gun_golddigger
scoreboard players operation @s weapon.gun_golddigger_rate = @s weapon.gun_golddigger_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_golddigger
playsound block.metal.break record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/golddigger/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_golddigger matches 1.. run function weapon:range/skill/skill/echo/record {gun:"golddigger"}
# END ECHO RECORD

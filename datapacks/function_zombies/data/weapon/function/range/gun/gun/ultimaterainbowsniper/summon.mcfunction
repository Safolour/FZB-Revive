execute unless score @s weapon.gun_ultimaterainbowsniper_ammo matches 1.. run return 0
execute unless score @s weapon.gun_ultimaterainbowsniper_clip_ammo matches 1.. run return 0
scoreboard players remove @s weapon.gun_ultimaterainbowsniper_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowsniper_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowsniper"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowsniper"}
execute unless score @s weapon.gun_ultimaterainbowsniper_rate0 = @s weapon.gun_ultimaterainbowsniper_rate0 run scoreboard players operation @s weapon.gun_ultimaterainbowsniper_rate0 = rate weapon.gun_ultimaterainbowsniper
scoreboard players operation @s weapon.gun_ultimaterainbowsniper_rate = @s weapon.gun_ultimaterainbowsniper_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowsniper
playsound entity.firework_rocket.blast_far record @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/ultimaterainbowsniper/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"ultimaterainbowsniper"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimaterainbowsniper matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimaterainbowsniper"}
# END ECHO RECORD

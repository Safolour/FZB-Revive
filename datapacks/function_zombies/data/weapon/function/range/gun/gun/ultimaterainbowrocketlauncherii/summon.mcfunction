scoreboard players remove @s weapon.gun_ultimaterainbowrocketlauncherii_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowrocketlauncherii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowrocketlauncherii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowrocketlauncherii"}
execute unless score @s weapon.gun_ultimaterainbowrocketlauncherii_rate0 = @s weapon.gun_ultimaterainbowrocketlauncherii_rate0 run scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncherii_rate0 = rate weapon.gun_ultimaterainbowrocketlauncherii
scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncherii_rate = @s weapon.gun_ultimaterainbowrocketlauncherii_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowrocketlauncherii
playsound entity.snowball.throw player @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/ultimaterainbowrocketlauncherii/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"ultimaterainbowrocketlauncherii"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimaterainbowrocketlauncherii matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimaterainbowrocketlauncherii"}
# END ECHO RECORD

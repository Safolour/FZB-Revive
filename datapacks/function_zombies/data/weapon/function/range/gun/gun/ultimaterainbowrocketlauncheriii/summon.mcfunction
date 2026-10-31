scoreboard players remove @s weapon.gun_ultimaterainbowrocketlauncheriii_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowrocketlauncheriii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowrocketlauncheriii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowrocketlauncheriii"}
execute unless score @s weapon.gun_ultimaterainbowrocketlauncheriii_rate0 = @s weapon.gun_ultimaterainbowrocketlauncheriii_rate0 run scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncheriii_rate0 = rate weapon.gun_ultimaterainbowrocketlauncheriii
scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncheriii_rate = @s weapon.gun_ultimaterainbowrocketlauncheriii_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowrocketlauncheriii
playsound entity.snowball.throw player @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/ultimaterainbowrocketlauncheriii/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"ultimaterainbowrocketlauncheriii"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimaterainbowrocketlauncheriii matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimaterainbowrocketlauncheriii"}
# END ECHO RECORD

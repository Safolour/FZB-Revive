scoreboard players remove @s weapon.gun_ultimaterainbowrocketlauncher_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowrocketlauncher_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowrocketlauncher"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowrocketlauncher"}
execute unless score @s weapon.gun_ultimaterainbowrocketlauncher_rate0 = @s weapon.gun_ultimaterainbowrocketlauncher_rate0 run scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncher_rate0 = rate weapon.gun_ultimaterainbowrocketlauncher
scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncher_rate = @s weapon.gun_ultimaterainbowrocketlauncher_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowrocketlauncher
playsound entity.snowball.throw player @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/ultimaterainbowrocketlauncher/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"ultimaterainbowrocketlauncher"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimaterainbowrocketlauncher matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimaterainbowrocketlauncher"}
# END ECHO RECORD

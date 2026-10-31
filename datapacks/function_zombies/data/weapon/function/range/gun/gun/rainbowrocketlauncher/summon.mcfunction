scoreboard players remove @s weapon.gun_rainbowrocketlauncher_ammo 1
scoreboard players remove @s weapon.gun_rainbowrocketlauncher_clip_ammo 1
function weapon:range/gun/slot/count {gun:"rainbowrocketlauncher"}
function weapon:range/gun/slot/xp_lv {gun:"rainbowrocketlauncher"}
execute unless score @s weapon.gun_rainbowrocketlauncher_rate0 = @s weapon.gun_rainbowrocketlauncher_rate0 run scoreboard players operation @s weapon.gun_rainbowrocketlauncher_rate0 = rate weapon.gun_rainbowrocketlauncher
scoreboard players operation @s weapon.gun_rainbowrocketlauncher_rate = @s weapon.gun_rainbowrocketlauncher_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_rainbowrocketlauncher
playsound entity.snowball.throw player @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/rainbowrocketlauncher/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"rainbowrocketlauncher"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_rainbowrocketlauncher matches 1.. run function weapon:range/skill/skill/echo/record {gun:"rainbowrocketlauncher"}
# END ECHO RECORD

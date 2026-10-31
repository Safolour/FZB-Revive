scoreboard players remove @s weapon.gun_rainbowsniper_ammo 1
scoreboard players remove @s weapon.gun_rainbowsniper_clip_ammo 1
function weapon:range/gun/slot/count {gun:"rainbowsniper"}
function weapon:range/gun/slot/xp_lv {gun:"rainbowsniper"}
execute unless score @s weapon.gun_rainbowsniper_rate0 = @s weapon.gun_rainbowsniper_rate0 run scoreboard players operation @s weapon.gun_rainbowsniper_rate0 = rate weapon.gun_rainbowsniper
scoreboard players operation @s weapon.gun_rainbowsniper_rate = @s weapon.gun_rainbowsniper_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_rainbowsniper
playsound entity.firework_rocket.blast_far record @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/rainbowsniper/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"rainbowsniper"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_rainbowsniper matches 1.. run function weapon:range/skill/skill/echo/record {gun:"rainbowsniper"}
# END ECHO RECORD

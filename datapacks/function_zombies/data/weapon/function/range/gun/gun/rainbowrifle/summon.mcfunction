scoreboard players remove @s weapon.gun_rainbowrifle_ammo 1
scoreboard players remove @s weapon.gun_rainbowrifle_clip_ammo 1
function weapon:range/gun/slot/count {gun:"rainbowrifle"}
function weapon:range/gun/slot/xp_lv {gun:"rainbowrifle"}
execute unless score @s weapon.gun_rainbowrifle_rate0 = @s weapon.gun_rainbowrifle_rate0 run scoreboard players operation @s weapon.gun_rainbowrifle_rate0 = rate weapon.gun_rainbowrifle
scoreboard players operation @s weapon.gun_rainbowrifle_rate = @s weapon.gun_rainbowrifle_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_rainbowrifle
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/rainbowrifle/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"rainbowrifle"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_rainbowrifle matches 1.. run function weapon:range/skill/skill/echo/record {gun:"rainbowrifle"}
# END ECHO RECORD

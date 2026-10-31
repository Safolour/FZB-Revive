scoreboard players remove @s weapon.gun_ultimaterifle_ammo 1
scoreboard players remove @s weapon.gun_ultimaterifle_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterifle"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterifle"}
execute unless score @s weapon.gun_ultimaterifle_rate0 = @s weapon.gun_ultimaterifle_rate0 run scoreboard players operation @s weapon.gun_ultimaterifle_rate0 = rate weapon.gun_ultimaterifle
scoreboard players operation @s weapon.gun_ultimaterifle_rate = @s weapon.gun_ultimaterifle_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterifle
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimaterifle/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimaterifle matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimaterifle"}
# END ECHO RECORD

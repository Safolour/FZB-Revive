scoreboard players remove @s weapon.gun_rifle_ammo 1
scoreboard players remove @s weapon.gun_rifle_clip_ammo 1
function weapon:range/gun/slot/count {gun:"rifle"}
function weapon:range/gun/slot/xp_lv {gun:"rifle"}
execute unless score @s weapon.gun_rifle_rate0 = @s weapon.gun_rifle_rate0 run scoreboard players operation @s weapon.gun_rifle_rate0 = rate weapon.gun_rifle
scoreboard players operation @s weapon.gun_rifle_rate = @s weapon.gun_rifle_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_rifle
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/rifle/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_rifle matches 1.. run function weapon:range/skill/skill/echo/record {gun:"rifle"}
# END ECHO RECORD

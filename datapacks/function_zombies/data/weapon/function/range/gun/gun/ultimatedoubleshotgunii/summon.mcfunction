scoreboard players remove @s weapon.gun_ultimatedoubleshotgunii_ammo 1
scoreboard players remove @s weapon.gun_ultimatedoubleshotgunii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimatedoubleshotgunii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimatedoubleshotgunii"}
execute unless score @s weapon.gun_ultimatedoubleshotgunii_rate0 = @s weapon.gun_ultimatedoubleshotgunii_rate0 run scoreboard players operation @s weapon.gun_ultimatedoubleshotgunii_rate0 = rate weapon.gun_ultimatedoubleshotgunii
scoreboard players operation @s weapon.gun_ultimatedoubleshotgunii_rate = @s weapon.gun_ultimatedoubleshotgunii_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatedoubleshotgunii
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 1 0
function weapon:range/gun/gun/ultimatedoubleshotgunii/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimatedoubleshotgunii matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimatedoubleshotgunii"}
# END ECHO RECORD

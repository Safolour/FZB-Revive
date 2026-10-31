scoreboard players remove @s weapon.gun_ultimateflamethrower_ammo 1
scoreboard players remove @s weapon.gun_ultimateflamethrower_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimateflamethrower"}
function weapon:range/gun/slot/xp_lv {gun:"ultimateflamethrower"}
execute unless score @s weapon.gun_ultimateflamethrower_rate0 = @s weapon.gun_ultimateflamethrower_rate0 run scoreboard players operation @s weapon.gun_ultimateflamethrower_rate0 = rate weapon.gun_ultimateflamethrower
scoreboard players operation @s weapon.gun_ultimateflamethrower_rate = @s weapon.gun_ultimateflamethrower_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimateflamethrower
playsound block.fire.ambient record @a ~ ~ ~ 1 1.25 0
function weapon:range/gun/gun/ultimateflamethrower/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimateflamethrower matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimateflamethrower"}
# END ECHO RECORD

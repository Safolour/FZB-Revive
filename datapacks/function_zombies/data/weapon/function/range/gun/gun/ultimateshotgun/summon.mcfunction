scoreboard players remove @s weapon.gun_ultimateshotgun_ammo 1
scoreboard players remove @s weapon.gun_ultimateshotgun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimateshotgun"}
function weapon:range/gun/slot/xp_lv {gun:"ultimateshotgun"}
execute unless score @s weapon.gun_ultimateshotgun_rate0 = @s weapon.gun_ultimateshotgun_rate0 run scoreboard players operation @s weapon.gun_ultimateshotgun_rate0 = rate weapon.gun_ultimateshotgun
scoreboard players operation @s weapon.gun_ultimateshotgun_rate = @s weapon.gun_ultimateshotgun_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimateshotgun
playsound entity.generic.explode record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimateshotgun/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimateshotgun matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimateshotgun"}
# END ECHO RECORD

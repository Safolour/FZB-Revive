scoreboard players remove @s weapon.gun_ultimateeldergun_ammo 1
scoreboard players remove @s weapon.gun_ultimateeldergun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimateeldergun"}
function weapon:range/gun/slot/xp_lv {gun:"ultimateeldergun"}
execute unless score @s weapon.gun_ultimateeldergun_rate0 = @s weapon.gun_ultimateeldergun_rate0 run scoreboard players operation @s weapon.gun_ultimateeldergun_rate0 = rate weapon.gun_ultimateeldergun
scoreboard players operation @s weapon.gun_ultimateeldergun_rate = @s weapon.gun_ultimateeldergun_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimateeldergun
playsound entity.firework_rocket.blast_far record @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/ultimateeldergun/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimateeldergun matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimateeldergun"}
# END ECHO RECORD

scoreboard players remove @s weapon.gun_magnum_ammo 1
scoreboard players remove @s weapon.gun_magnum_clip_ammo 1
function weapon:range/gun/slot/count {gun:"magnum"}
function weapon:range/gun/slot/xp_lv {gun:"magnum"}
execute unless score @s weapon.gun_magnum_rate0 = @s weapon.gun_magnum_rate0 run scoreboard players operation @s weapon.gun_magnum_rate0 = rate weapon.gun_magnum
scoreboard players operation @s weapon.gun_magnum_rate = @s weapon.gun_magnum_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_magnum
playsound entity.firework_rocket.large_blast_far player @a ~ ~ ~ 1 1 0
function weapon:range/gun/gun/magnum/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_magnum matches 1.. run function weapon:range/skill/skill/echo/record {gun:"magnum"}
# END ECHO RECORD

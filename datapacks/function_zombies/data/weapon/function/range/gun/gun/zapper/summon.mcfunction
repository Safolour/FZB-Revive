scoreboard players remove @s weapon.gun_zapper_ammo 1
scoreboard players remove @s weapon.gun_zapper_clip_ammo 1
function weapon:range/gun/slot/count {gun:"zapper"}
function weapon:range/gun/slot/xp_lv {gun:"zapper"}
execute unless score @s weapon.gun_zapper_rate0 = @s weapon.gun_zapper_rate0 run scoreboard players operation @s weapon.gun_zapper_rate0 = rate weapon.gun_zapper
scoreboard players operation @s weapon.gun_zapper_rate = @s weapon.gun_zapper_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_zapper
playsound item.flintandsteel.use record @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/zapper/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_zapper matches 1.. run function weapon:range/skill/skill/echo/record {gun:"zapper"}
# END ECHO RECORD

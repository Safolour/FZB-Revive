scoreboard players remove @s weapon.gun_weatheredcoppergun_ammo 1
scoreboard players remove @s weapon.gun_weatheredcoppergun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"weatheredcoppergun"}
function weapon:range/gun/slot/xp_lv {gun:"weatheredcoppergun"}
execute unless score @s weapon.gun_weatheredcoppergun_rate0 = @s weapon.gun_weatheredcoppergun_rate0 run scoreboard players operation @s weapon.gun_weatheredcoppergun_rate0 = rate weapon.gun_weatheredcoppergun
scoreboard players operation @s weapon.gun_weatheredcoppergun_rate = @s weapon.gun_weatheredcoppergun_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_weatheredcoppergun
playsound item.trident.hit_ground player @a ~ ~ ~ 1 0 0
playsound item.trident.hit_ground player @a ~ ~ ~ 1 0 0
playsound block.bell.use player @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/weatheredcoppergun/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_weatheredcoppergun matches 1.. run function weapon:range/skill/skill/echo/record {gun:"weatheredcoppergun"}
# END ECHO RECORD

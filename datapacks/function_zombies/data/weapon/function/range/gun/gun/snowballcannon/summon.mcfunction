scoreboard players remove @s weapon.gun_snowballcannon_ammo 1
scoreboard players remove @s weapon.gun_snowballcannon_clip_ammo 1
function weapon:range/gun/slot/count {gun:"snowballcannon"}
function weapon:range/gun/slot/xp_lv {gun:"snowballcannon"}
execute unless score @s weapon.gun_snowballcannon_rate0 = @s weapon.gun_snowballcannon_rate0 run scoreboard players operation @s weapon.gun_snowballcannon_rate0 = rate weapon.gun_snowballcannon
scoreboard players operation @s weapon.gun_snowballcannon_rate = @s weapon.gun_snowballcannon_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_snowballcannon
playsound minecraft:entity.zombie.infect ambient @a ~ ~ ~ 1 1 0
function weapon:range/gun/gun/snowballcannon/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_snowballcannon matches 1.. run function weapon:range/skill/skill/echo/record {gun:"snowballcannon"}
# END ECHO RECORD

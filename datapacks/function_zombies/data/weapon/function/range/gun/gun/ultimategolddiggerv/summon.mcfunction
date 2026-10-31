scoreboard players remove @s weapon.gun_ultimategolddiggerv_ammo 1
scoreboard players remove @s weapon.gun_ultimategolddiggerv_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimategolddiggerv"}
function weapon:range/gun/slot/xp_lv {gun:"ultimategolddiggerv"}
execute unless score @s weapon.gun_ultimategolddiggerv_rate0 = @s weapon.gun_ultimategolddiggerv_rate0 run scoreboard players operation @s weapon.gun_ultimategolddiggerv_rate0 = rate weapon.gun_ultimategolddiggerv
scoreboard players operation @s weapon.gun_ultimategolddiggerv_rate = @s weapon.gun_ultimategolddiggerv_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimategolddiggerv
playsound block.metal.break record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimategolddiggerv/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimategolddiggerv matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimategolddiggerv"}
# END ECHO RECORD

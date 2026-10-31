scoreboard players remove @s weapon.gun_ultimategolddiggeriv_ammo 1
scoreboard players remove @s weapon.gun_ultimategolddiggeriv_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimategolddiggeriv"}
function weapon:range/gun/slot/xp_lv {gun:"ultimategolddiggeriv"}
execute unless score @s weapon.gun_ultimategolddiggeriv_rate0 = @s weapon.gun_ultimategolddiggeriv_rate0 run scoreboard players operation @s weapon.gun_ultimategolddiggeriv_rate0 = rate weapon.gun_ultimategolddiggeriv
scoreboard players operation @s weapon.gun_ultimategolddiggeriv_rate = @s weapon.gun_ultimategolddiggeriv_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimategolddiggeriv
playsound block.metal.break record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimategolddiggeriv/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimategolddiggeriv matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimategolddiggeriv"}
# END ECHO RECORD

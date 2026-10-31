scoreboard players remove @s weapon.gun_ultimategolddiggeriii_ammo 1
scoreboard players remove @s weapon.gun_ultimategolddiggeriii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimategolddiggeriii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimategolddiggeriii"}
execute unless score @s weapon.gun_ultimategolddiggeriii_rate0 = @s weapon.gun_ultimategolddiggeriii_rate0 run scoreboard players operation @s weapon.gun_ultimategolddiggeriii_rate0 = rate weapon.gun_ultimategolddiggeriii
scoreboard players operation @s weapon.gun_ultimategolddiggeriii_rate = @s weapon.gun_ultimategolddiggeriii_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimategolddiggeriii
playsound block.metal.break record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimategolddiggeriii/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimategolddiggeriii matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimategolddiggeriii"}
# END ECHO RECORD

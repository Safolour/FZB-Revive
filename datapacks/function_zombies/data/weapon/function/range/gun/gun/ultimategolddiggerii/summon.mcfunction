scoreboard players remove @s weapon.gun_ultimategolddiggerii_ammo 1
scoreboard players remove @s weapon.gun_ultimategolddiggerii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimategolddiggerii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimategolddiggerii"}
execute unless score @s weapon.gun_ultimategolddiggerii_rate0 = @s weapon.gun_ultimategolddiggerii_rate0 run scoreboard players operation @s weapon.gun_ultimategolddiggerii_rate0 = rate weapon.gun_ultimategolddiggerii
scoreboard players operation @s weapon.gun_ultimategolddiggerii_rate = @s weapon.gun_ultimategolddiggerii_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimategolddiggerii
playsound block.metal.break record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimategolddiggerii/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimategolddiggerii matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimategolddiggerii"}
# END ECHO RECORD

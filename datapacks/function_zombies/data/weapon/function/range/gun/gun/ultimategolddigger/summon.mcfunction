scoreboard players remove @s weapon.gun_ultimategolddigger_ammo 1
scoreboard players remove @s weapon.gun_ultimategolddigger_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimategolddigger"}
function weapon:range/gun/slot/xp_lv {gun:"ultimategolddigger"}
execute unless score @s weapon.gun_ultimategolddigger_rate0 = @s weapon.gun_ultimategolddigger_rate0 run scoreboard players operation @s weapon.gun_ultimategolddigger_rate0 = rate weapon.gun_ultimategolddigger
scoreboard players operation @s weapon.gun_ultimategolddigger_rate = @s weapon.gun_ultimategolddigger_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimategolddigger
playsound block.metal.break record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimategolddigger/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimategolddigger matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimategolddigger"}
# END ECHO RECORD

scoreboard players remove @s weapon.gun_flamethrower_ammo 1
scoreboard players remove @s weapon.gun_flamethrower_clip_ammo 1
function weapon:range/gun/slot/count {gun:"flamethrower"}
function weapon:range/gun/slot/xp_lv {gun:"flamethrower"}
execute unless score @s weapon.gun_flamethrower_rate0 = @s weapon.gun_flamethrower_rate0 run scoreboard players operation @s weapon.gun_flamethrower_rate0 = rate weapon.gun_flamethrower
scoreboard players operation @s weapon.gun_flamethrower_rate = @s weapon.gun_flamethrower_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_flamethrower
playsound block.fire.ambient record @a ~ ~ ~ 1 1.25 0
function weapon:range/gun/gun/flamethrower/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_flamethrower matches 1.. run function weapon:range/skill/skill/echo/record {gun:"flamethrower"}
# END ECHO RECORD

scoreboard players remove @s weapon.gun_soulflamethrower_ammo 1
scoreboard players remove @s weapon.gun_soulflamethrower_clip_ammo 1
function weapon:range/gun/slot/count {gun:"soulflamethrower"}
function weapon:range/gun/slot/xp_lv {gun:"soulflamethrower"}
execute unless score @s weapon.gun_soulflamethrower_rate0 = @s weapon.gun_soulflamethrower_rate0 run scoreboard players operation @s weapon.gun_soulflamethrower_rate0 = rate weapon.gun_soulflamethrower
scoreboard players operation @s weapon.gun_soulflamethrower_rate = @s weapon.gun_soulflamethrower_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_soulflamethrower
playsound block.fire.ambient player @a ~ ~ ~ 1 1.25 0
function weapon:range/gun/gun/soulflamethrower/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_soulflamethrower matches 1.. run function weapon:range/skill/skill/echo/record {gun:"soulflamethrower"}
# END ECHO RECORD

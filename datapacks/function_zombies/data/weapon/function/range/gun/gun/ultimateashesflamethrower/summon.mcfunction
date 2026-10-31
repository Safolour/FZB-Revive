scoreboard players remove @s weapon.gun_ultimateashesflamethrower_ammo 1
scoreboard players remove @s weapon.gun_ultimateashesflamethrower_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimateashesflamethrower"}
function weapon:range/gun/slot/xp_lv {gun:"ultimateashesflamethrower"}
execute unless score @s weapon.gun_ultimateashesflamethrower_rate0 = @s weapon.gun_ultimateashesflamethrower_rate0 run scoreboard players operation @s weapon.gun_ultimateashesflamethrower_rate0 = rate weapon.gun_ultimateashesflamethrower
scoreboard players operation @s weapon.gun_ultimateashesflamethrower_rate = @s weapon.gun_ultimateashesflamethrower_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimateashesflamethrower
# 录像：每发在射手位置播放这两个声音
playsound block.fire.extinguish record @a ~ ~ ~ 1.5 1.8 0
playsound entity.cat.hiss record @a ~ ~ ~ 1 1 0
function weapon:range/gun/gun/ultimateashesflamethrower/summon0
# 消耗自身生命，给自己和附近队友伤害吸收
function weapon:range/gun/gun/ashesflamethrower/absorb/shoot
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimateashesflamethrower matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimateashesflamethrower"}
# END ECHO RECORD

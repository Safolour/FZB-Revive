scoreboard players remove @s weapon.gun_ashesflamethrower_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/ashesflamethrower/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ashesflamethrower
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ashesflamethrower
# 录像：每发在射手位置播放这两个声音
playsound block.fire.extinguish record @a ~ ~ ~ 1.5 1.8 0
playsound entity.cat.hiss record @a ~ ~ ~ 1 1 0
function weapon:range/gun/gun/ashesflamethrower/summon0
# 消耗自身生命，给自己和附近队友伤害吸收
function weapon:range/gun/gun/ashesflamethrower/absorb/shoot
scoreboard players set @s weapon.use 0

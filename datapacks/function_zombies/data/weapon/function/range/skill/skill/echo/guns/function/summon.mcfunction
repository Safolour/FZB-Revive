scoreboard players remove @s weapon.gun_function_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/function/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_function
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_function
# 录像：每次开火在射手位置 bee.sting 音量 1、音调 1.5、类别 player
playsound entity.bee.sting player @a ~ ~ ~ 1 1.5 0
function weapon:range/gun/gun/function/summon0
function weapon:range/skill/skill/echo/extrashot/summon {gun:"function"}
scoreboard players set @s weapon.use 0

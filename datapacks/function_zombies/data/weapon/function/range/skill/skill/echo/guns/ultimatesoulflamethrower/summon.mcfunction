scoreboard players remove @s weapon.gun_ultimatesoulflamethrower_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/ultimatesoulflamethrower/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ultimatesoulflamethrower
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatesoulflamethrower
playsound block.fire.ambient player @a ~ ~ ~ 1 1.25 0
function weapon:range/gun/gun/ultimatesoulflamethrower/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

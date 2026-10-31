scoreboard players remove @s weapon.gun_aurora_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/aurora/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_aurora
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_aurora
playsound entity.firework_rocket.blast player @a ~ ~ ~ 2 0 0
function weapon:range/gun/gun/aurora/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

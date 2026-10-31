scoreboard players remove @s weapon.gun_ultimatedoubleshotguniii_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/ultimatedoubleshotguniii/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ultimatedoubleshotguniii
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatedoubleshotguniii
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 1 0
function weapon:range/gun/gun/ultimatedoubleshotguniii/summon0
scoreboard players set @s weapon.use 0

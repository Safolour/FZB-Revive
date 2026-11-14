execute unless score @s weapon.gun_ultimaterainbowsniperii_ammo matches 1.. run return 0
execute unless score @s weapon.gun_echo_clip_ammo matches 1.. run return 0
scoreboard players remove @s weapon.gun_ultimaterainbowsniperii_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/ultimaterainbowsniperii/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ultimaterainbowsniperii
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowsniperii
playsound entity.firework_rocket.blast_far record @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/ultimaterainbowsniperii/summon0
function weapon:range/skill/skill/echo/extrashot/summon {gun:"ultimaterainbowsniperii"}
scoreboard players set @s weapon.use 0

scoreboard players remove @s weapon.gun_ultimatesnowballcannon_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/ultimatesnowballcannon/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ultimatesnowballcannon
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatesnowballcannon
playsound minecraft:entity.zombie.infect ambient @a ~ ~ ~ 1 1 0
function weapon:range/gun/gun/ultimatesnowballcannon/summon0
scoreboard players set @s weapon.use 0

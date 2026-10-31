scoreboard players remove @s weapon.gun_ultimateseason_summer_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/ultimateseason_summer/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ultimateseason_summer
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimateseason_summer
playsound block.fire.ambient player @a ~ ~ ~ 1 1
function weapon:range/gun/gun/ultimateseason_summer/summon0
scoreboard players add @s weapon.gun_ultimateseason_summer_heat 1
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

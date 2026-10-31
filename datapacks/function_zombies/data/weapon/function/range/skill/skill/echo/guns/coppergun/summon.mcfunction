scoreboard players remove @s weapon.gun_coppergun_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/coppergun/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_coppergun
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_coppergun
playsound entity.iron_golem.hurt player @a ~ ~ ~ 1 1.5 0
function weapon:range/gun/gun/coppergun/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

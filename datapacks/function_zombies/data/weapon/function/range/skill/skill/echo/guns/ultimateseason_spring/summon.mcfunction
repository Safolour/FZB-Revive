scoreboard players remove @s weapon.gun_ultimateseason_spring_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/ultimateseason_spring/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ultimateseason_spring
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimateseason_spring
playsound block.cherry_leaves.break player @a ~ ~ ~ 0.5 1.6
function weapon:range/gun/gun/ultimateseason_spring/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

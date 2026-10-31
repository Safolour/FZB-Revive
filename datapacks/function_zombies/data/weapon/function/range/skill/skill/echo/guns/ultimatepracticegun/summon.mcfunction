scoreboard players remove @s weapon.gun_ultimatepracticegun_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/ultimatepracticegun/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ultimatepracticegun
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatepracticegun
playsound entity.iron_golem.hurt record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimatepracticegun/summon0
function weapon:range/skill/skill/echo/extrashot/summon {gun:"ultimatepracticegun"}
scoreboard players set @s weapon.use 0

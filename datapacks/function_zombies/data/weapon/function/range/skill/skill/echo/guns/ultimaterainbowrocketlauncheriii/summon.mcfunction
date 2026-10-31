scoreboard players remove @s weapon.gun_ultimaterainbowrocketlauncheriii_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/ultimaterainbowrocketlauncheriii/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ultimaterainbowrocketlauncheriii
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowrocketlauncheriii
playsound entity.snowball.throw player @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/ultimaterainbowrocketlauncheriii/summon0
function weapon:range/skill/skill/echo/extrashot/summon {gun:"ultimaterainbowrocketlauncheriii"}
scoreboard players set @s weapon.use 0

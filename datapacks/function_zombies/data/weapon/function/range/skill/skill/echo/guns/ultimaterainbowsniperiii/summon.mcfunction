execute unless score @s weapon.gun_ultimaterainbowsniperiii_ammo matches 1.. run return 0
execute unless score @s weapon.gun_echo_clip_ammo matches 1.. run return 0
scoreboard players remove @s weapon.gun_ultimaterainbowsniperiii_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/ultimaterainbowsniperiii/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ultimaterainbowsniperiii
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowsniperiii
playsound entity.firework_rocket.blast_far record @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/ultimaterainbowsniperiii/summon0
function weapon:range/skill/skill/echo/extrashot/summon {gun:"ultimaterainbowsniperiii"}
scoreboard players set @s weapon.use 0

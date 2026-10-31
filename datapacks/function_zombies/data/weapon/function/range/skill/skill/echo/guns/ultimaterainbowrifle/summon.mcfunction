scoreboard players remove @s weapon.gun_ultimaterainbowrifle_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/ultimaterainbowrifle/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ultimaterainbowrifle
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowrifle
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimaterainbowrifle/summon0
function weapon:range/skill/skill/echo/extrashot/summon {gun:"ultimaterainbowrifle"}
scoreboard players set @s weapon.use 0

scoreboard players remove @s weapon.gun_sniper_ammo 1
scoreboard players remove @s weapon.gun_sniper_clip_ammo 1
function weapon:range/gun/slot/count {gun:"sniper"}
function weapon:range/gun/slot/xp_lv {gun:"sniper"}
execute unless score @s weapon.gun_sniper_rate0 = @s weapon.gun_sniper_rate0 run scoreboard players operation @s weapon.gun_sniper_rate0 = rate weapon.gun_sniper
scoreboard players operation @s weapon.gun_sniper_rate = @s weapon.gun_sniper_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_sniper
playsound entity.firework_rocket.blast_far record @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/sniper/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_sniper matches 1.. run function weapon:range/skill/skill/echo/record {gun:"sniper"}
# END ECHO RECORD

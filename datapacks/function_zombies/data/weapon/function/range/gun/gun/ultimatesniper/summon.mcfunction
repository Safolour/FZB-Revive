scoreboard players remove @s weapon.gun_ultimatesniper_ammo 1
scoreboard players remove @s weapon.gun_ultimatesniper_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimatesniper"}
function weapon:range/gun/slot/xp_lv {gun:"ultimatesniper"}
execute unless score @s weapon.gun_ultimatesniper_rate0 = @s weapon.gun_ultimatesniper_rate0 run scoreboard players operation @s weapon.gun_ultimatesniper_rate0 = rate weapon.gun_ultimatesniper
scoreboard players operation @s weapon.gun_ultimatesniper_rate = @s weapon.gun_ultimatesniper_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatesniper
playsound entity.firework_rocket.blast_far record @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/ultimatesniper/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimatesniper matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimatesniper"}
# END ECHO RECORD

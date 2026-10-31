scoreboard players remove @s weapon.gun_doubleshotgun_ammo 1
scoreboard players remove @s weapon.gun_doubleshotgun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"doubleshotgun"}
function weapon:range/gun/slot/xp_lv {gun:"doubleshotgun"}
execute unless score @s weapon.gun_doubleshotgun_rate0 = @s weapon.gun_doubleshotgun_rate0 run scoreboard players operation @s weapon.gun_doubleshotgun_rate0 = rate weapon.gun_doubleshotgun
scoreboard players operation @s weapon.gun_doubleshotgun_rate = @s weapon.gun_doubleshotgun_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_doubleshotgun
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 1 0
function weapon:range/gun/gun/doubleshotgun/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_doubleshotgun matches 1.. run function weapon:range/skill/skill/echo/record {gun:"doubleshotgun"}
# END ECHO RECORD

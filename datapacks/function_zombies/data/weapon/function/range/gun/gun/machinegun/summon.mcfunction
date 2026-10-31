scoreboard players remove @s weapon.gun_machinegun_ammo 1
scoreboard players remove @s weapon.gun_machinegun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"machinegun"}
function weapon:range/gun/slot/xp_lv {gun:"machinegun"}
execute unless score @s weapon.gun_machinegun_rate0 = @s weapon.gun_machinegun_rate0 run scoreboard players operation @s weapon.gun_machinegun_rate0 = rate weapon.gun_machinegun
scoreboard players operation @s weapon.gun_machinegun_rate = @s weapon.gun_machinegun_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_machinegun
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/machinegun/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"machinegun"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_machinegun matches 1.. run function weapon:range/skill/skill/echo/record {gun:"machinegun"}
# END ECHO RECORD

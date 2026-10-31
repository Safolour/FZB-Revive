scoreboard players remove @s weapon.gun_ultimatemachinegun_ammo 1
scoreboard players remove @s weapon.gun_ultimatemachinegun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimatemachinegun"}
function weapon:range/gun/slot/xp_lv {gun:"ultimatemachinegun"}
execute unless score @s weapon.gun_ultimatemachinegun_rate0 = @s weapon.gun_ultimatemachinegun_rate0 run scoreboard players operation @s weapon.gun_ultimatemachinegun_rate0 = rate weapon.gun_ultimatemachinegun
scoreboard players operation @s weapon.gun_ultimatemachinegun_rate = @s weapon.gun_ultimatemachinegun_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatemachinegun
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimatemachinegun/summon0
function weapon:range/gun/gun/extrashot/summon {gun:"ultimatemachinegun"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimatemachinegun matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimatemachinegun"}
# END ECHO RECORD

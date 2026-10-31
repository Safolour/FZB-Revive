scoreboard players remove @s weapon.gun_ultimateaurora_ammo 1
scoreboard players remove @s weapon.gun_ultimateaurora_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimateaurora"}
function weapon:range/gun/slot/xp_lv {gun:"ultimateaurora"}
execute unless score @s weapon.gun_ultimateaurora_rate0 = @s weapon.gun_ultimateaurora_rate0 run scoreboard players operation @s weapon.gun_ultimateaurora_rate0 = rate weapon.gun_ultimateaurora
scoreboard players operation @s weapon.gun_ultimateaurora_rate = @s weapon.gun_ultimateaurora_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimateaurora
playsound entity.firework_rocket.blast player @a ~ ~ ~ 2 0 0
function weapon:range/gun/gun/ultimateaurora/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_ultimateaurora matches 1.. run function weapon:range/skill/skill/echo/record {gun:"ultimateaurora"}
# END ECHO RECORD

scoreboard players remove @s weapon.gun_coppergun_ammo 1
scoreboard players remove @s weapon.gun_coppergun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"coppergun"}
function weapon:range/gun/slot/xp_lv {gun:"coppergun"}
execute unless score @s weapon.gun_coppergun_rate0 = @s weapon.gun_coppergun_rate0 run scoreboard players operation @s weapon.gun_coppergun_rate0 = rate weapon.gun_coppergun
scoreboard players operation @s weapon.gun_coppergun_rate = @s weapon.gun_coppergun_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_coppergun
playsound entity.iron_golem.hurt player @a ~ ~ ~ 1 1.5 0
function weapon:range/gun/gun/coppergun/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_coppergun matches 1.. run function weapon:range/skill/skill/echo/record {gun:"coppergun"}
# END ECHO RECORD

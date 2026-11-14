scoreboard players remove @s weapon.gun_paradox_ammo 1
scoreboard players remove @s weapon.gun_paradox_clip_ammo 1
function weapon:range/gun/slot/count {gun:"paradox"}
function weapon:range/gun/slot/xp_lv {gun:"paradox"}
execute unless score @s weapon.gun_paradox_rate0 = @s weapon.gun_paradox_rate0 run scoreboard players operation @s weapon.gun_paradox_rate0 = rate weapon.gun_paradox
scoreboard players operation @s weapon.gun_paradox_rate = @s weapon.gun_paradox_rate0
execute if score @s weapon.pd_state matches 2 run scoreboard players operation @s weapon.gun_paradox_rate = dream_rate weapon.gun_paradox
execute if score @s weapon.pd_state matches 2 if score @s perk.quick_fire matches 1 run scoreboard players operation @s weapon.gun_paradox_rate /= 2 number
playsound block.sculk_shrieker.shriek player @a ~ ~ ~ 2 1.5
function weapon:range/gun/gun/paradox/summon0
# Burst markers keep their own count, so 0.5s dream triggers can overlap.
execute at @s run summon marker ~ ~ ~ {Tags:["paradox.new_burst","gun","extrashot"],data:{gun:"paradox"}}
scoreboard players operation @n[type=marker,tag=paradox.new_burst] weapon.gun_uuid = @s uuid
scoreboard players operation @n[type=marker,tag=paradox.new_burst] weapon.gun_extrashot = extrashot weapon.gun_paradox
execute if score @s weapon.pd_state matches 2 run scoreboard players operation @n[type=marker,tag=paradox.new_burst] weapon.gun_extrashot = dream_extrashot weapon.gun_paradox
scoreboard players set @n[type=marker,tag=paradox.new_burst] weapon.gun_extrashot_time 4
tag @e[type=marker,tag=paradox.new_burst] remove paradox.new_burst

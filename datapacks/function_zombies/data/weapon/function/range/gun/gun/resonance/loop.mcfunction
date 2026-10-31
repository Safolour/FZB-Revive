tp @s ~ ~ ~ facing ^ ^ ^1
scoreboard players operation @s weapon.use = uuid weapon.gun_resonance
scoreboard players operation @s weapon.gun_uuid = @p[scores={weapon.use=1..}] uuid
execute if entity @p[scores={weapon.use=1..,perk.magnetic_bullet=1}] run tag @s add magnet
scoreboard players operation @s weapon.gun_color = color weapon.range
scoreboard players set @s weapon.resonance_dist 2
scoreboard players set @s weapon.range 60
scoreboard players set @s weapon.resonance_pierce 2
execute store result score @s weapon.resonance_born run time query gametime
tag @s remove chosen_new
execute at @s run function weapon:range/gun/gun/resonance/proj/tick

tp @s ~ ~ ~ facing ^ ^ ^1
tp @s ^ ^ ^1
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowrocketlauncherii
scoreboard players operation @s weapon.gun_uuid = @p[scores={weapon.use=1..}] uuid
execute if entity @p[scores={weapon.use=1..,perk.magnetic_bullet=1}] run tag @s add magnet
scoreboard players operation @s weapon.gun_color = color weapon.range
scoreboard players set @s weapon.rainbowrocketlauncher_dist 2
scoreboard players set @s weapon.range 512
scoreboard players set @s weapon.rainbowrocketlauncher_pierce 0
execute store result score @s weapon.rainbowrocketlauncher_born run time query gametime
tag @s remove chosen_new
execute at @s run function weapon:range/gun/gun/rainbowrocketlauncher/proj/tick


tp @s ~ ~ ~ facing ^ ^ ^1
data merge entity @s {transformation:{scale:[2.0f,2.0f,2.0f]},billboard:center}
scoreboard players operation @s weapon.range = range weapon.gun_rocketlauncher
scoreboard players operation @s weapon.use = uuid weapon.gun_rocketlauncher
scoreboard players operation @s weapon.gun_uuid = @p[scores={weapon.use=1..}] uuid
execute if entity @p[scores={weapon.use=1..,perk.magnetic_bullet=1}] run tag @s add magnet
tag @s remove chosen


tp @s ~ ~ ~ facing ^ ^ ^1
scoreboard players set range weapon.range 0
scoreboard players operation reflection weapon.state = reflection weapon.gun_musicgun
scoreboard players operation max_range weapon.range = range weapon.gun_musicgun
scoreboard players operation @s weapon.use = uuid weapon.gun_musicgun
function weapon:range/gun/loop/0
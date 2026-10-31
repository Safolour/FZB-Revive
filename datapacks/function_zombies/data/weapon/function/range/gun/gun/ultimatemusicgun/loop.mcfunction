
tp @s ~ ~ ~ facing ^ ^ ^1
scoreboard players set range weapon.range 0
scoreboard players operation reflection weapon.state = reflection weapon.gun_ultimatemusicgun
scoreboard players operation max_range weapon.range = range weapon.gun_ultimatemusicgun
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatemusicgun
function weapon:range/gun/loop/0

tp @s ~ ~ ~ facing ^ ^ ^1
scoreboard players set range weapon.range 0
scoreboard players operation max_range weapon.range = range weapon.gun_ultimatepracticegun
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatepracticegun
function weapon:range/gun/loop/0
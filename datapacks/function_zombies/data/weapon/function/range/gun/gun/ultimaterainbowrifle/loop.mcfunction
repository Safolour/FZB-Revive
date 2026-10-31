
tp @s ~ ~ ~ facing ^ ^ ^1
scoreboard players set range weapon.range 0
scoreboard players operation max_range weapon.range = range weapon.gun_ultimaterainbowrifle
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowrifle
function weapon:range/gun/loop/0
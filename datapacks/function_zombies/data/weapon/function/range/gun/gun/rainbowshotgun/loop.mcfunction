tp @s ~ ~ ~ facing ^ ^ ^1
scoreboard players operation @s weapon.gun_color = color weapon.range
scoreboard players operation @s weapon.use = uuid weapon.gun_rainbowshotgun
scoreboard players set range weapon.range 0
scoreboard players operation max_range weapon.range = range weapon.gun_rainbowshotgun
scoreboard players set penetrable weapon.state 1
scoreboard players set reflection weapon.state 0
function weapon:range/gun/loop/0

tp @s ~ ~ ~ facing ^ ^ ^1
scoreboard players operation @s weapon.gun_color = color weapon.range
scoreboard players operation @s weapon.use = uuid weapon.gun_oxidizedcoppergun
scoreboard players set range weapon.range 0
scoreboard players operation max_range weapon.range = range weapon.gun_oxidizedcoppergun
scoreboard players set penetrable weapon.state 2
scoreboard players set reflection weapon.state 0
function weapon:range/gun/loop/0

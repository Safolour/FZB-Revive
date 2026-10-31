
execute if score online0 player_count = online player_count run return fail
$execute if entity @a[name=$(name)] run return fail
$execute if score $(name) system.online matches 0 run return fail
$scoreboard players set $(name) system.online 0
$tellraw @a [{translate:zb.multiplayer.3,with:[{text:"$(name)",color:white}]}]


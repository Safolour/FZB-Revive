tellraw @a[scores={system.room=3..}] [{translate:zb.waitlobby.tellraw.3,with:[{selector:"@s",color:white}]}]

clone 1 -59 7 3 -53 14 43 24 109
function mainlobby:tp_lobby

scoreboard players set @s interaction.state 0

execute unless entity @a[scores={system.room=3}] run scoreboard players set type map -1

function map:waitlobby/scoreboard/player_count

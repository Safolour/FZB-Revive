
execute at @s run function mainlobby:npc/joingame/spawn0

execute if score in_game0 lobby.info = in_game lobby.info run return fail
execute if score in_game lobby.info matches 0 run return run data modify entity @n[type=armor_stand,tag=npc,tag=lobby,tag=text0] CustomName set value [{translate:zb.mainlobby.npc.4,with:[{text:"§e0§r"}]}]

execute store result storage mainlobby root.stat.player_count int 1 run scoreboard players get in_game lobby.info
function mainlobby:npc/joingame/tick0_0 with storage mainlobby root.stat
data remove storage mainlobby root
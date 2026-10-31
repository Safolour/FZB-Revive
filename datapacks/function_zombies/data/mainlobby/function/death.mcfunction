
scoreboard players set @s lobby.death 0
execute if entity @s[scores={system.room=4..}] run return run function map:game/tp_back
function mainlobby:tp_lobby
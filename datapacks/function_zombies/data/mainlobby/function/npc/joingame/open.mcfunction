
advancement revoke @s only mainlobby:minecart_open
scoreboard players operation uuid lobby.uuid = @s uuid

tag @s add chosen
execute as @e[type=chest_minecart,tag=npc,tag=lobby,tag=minecart,tag=opened] at @s if score @s lobby.uuid = uuid lobby.uuid run function mainlobby:npc/joingame/kill
execute as @e[type=chest_minecart,tag=npc,tag=lobby,tag=minecart,tag=!opened,nbt=!{LootTable:"mainlobby:nothing"}] at @s run function mainlobby:npc/joingame/open1
tag @s remove chosen

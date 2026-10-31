
execute as @e[type=chest_minecart,tag=npc,tag=lobby,tag=minecart] run function mainlobby:npc/joingame/kill
execute as @e[tag=npc,tag=lobby] run function system:death

$execute rotated $(x) $(y) run function mainlobby:npc/joingame/reload_capture

summon chest_minecart ~ ~ ~ {Tags:["npc","lobby","minecart","precedence","height0"],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"mainlobby:nothing"}
summon chest_minecart ~ ~0.7 ~ {Tags:["npc","lobby","minecart","precedence","height1"],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"mainlobby:nothing"}
summon chest_minecart ~ ~1.4 ~ {Tags:["npc","lobby","minecart","precedence","height2"],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"mainlobby:nothing"}
team join collision @n[type=minecart,tag=npc,tag=lobby,tag=minecart]
execute if entity @e[type=!minecart,tag=npc,tag=lobby,tag=!minecart] run return fail
$summon zombie ~ ~ ~ {NoAI:1b,Invulnerable:1b,NoGravity:1b,Tags:["npc","lobby"],Rotation:[$(x),$(y)],Silent:1b,IsBaby:0b,PersistenceRequired:1b,Rotation:[$(x),$(y)]}
summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{translate:"zb.mainlobby.npc.4",with:[{text:"§e0§r"}]}],Tags:["npc","lobby",text,"text0"]}
summon armor_stand ~ ~2.5 ~ {Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{translate:"zb.mainlobby.npc.2"}],Tags:["npc","lobby",text]}
summon armor_stand ~ ~3 ~ {Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{translate:"zb.mainlobby.npc.3"}],Tags:["npc","lobby",text]}

team join collision @e[tag=npc,tag=lobby]
scoreboard players set in_game0 lobby.info -1
scoreboard players set in_game lobby.info 0
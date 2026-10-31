
tag @s add opened
tag @s add chosen
execute at @s if entity @s[tag=height0] run summon chest_minecart ~ ~ ~ {Tags:["npc","lobby","minecart","precedence","height0"],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"mainlobby:nothing"}
execute at @s if entity @s[tag=height1] run summon chest_minecart ~ ~ ~ {Tags:["npc","lobby","minecart","precedence","height1"],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"mainlobby:nothing"}
execute at @s if entity @s[tag=height2] run summon chest_minecart ~ ~ ~ {Tags:["npc","lobby","minecart","precedence","height2"],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"mainlobby:nothing"}
execute as @n[type=zombie,tag=npc,tag=lobby] at @s run tp @n[type=chest_minecart,tag=npc,tag=lobby,tag=chosen] ~ ~-1 ~
team join collision @n[type=chest_minecart,tag=npc,tag=lobby,tag=chosen]
scoreboard players operation @s lobby.uuid = uuid lobby.uuid
function mainlobby:npc/joingame/menu_item/menu1
tag @s remove chosen

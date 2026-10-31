execute positioned ^ ^-2.8 ^-0.8625 unless entity @e[type=interaction,tag=lobby,tag=reload_capture,distance=..0.5] at @s run function mainlobby:npc/joingame/reload_capture

execute unless entity @n[type=chest_minecart,tag=height0,dx=0,dz=0,dy=2] as @e[type=chest_minecart,tag=height0,tag=!opened] run function mainlobby:npc/joingame/kill
execute unless entity @n[type=chest_minecart,tag=height1,dx=0,dz=0,dy=2] as @e[type=chest_minecart,tag=height1,tag=!opened] run function mainlobby:npc/joingame/kill
execute unless entity @n[type=chest_minecart,tag=height2,dx=0,dz=0,dy=2] as @e[type=chest_minecart,tag=height2,tag=!opened] run function mainlobby:npc/joingame/kill
execute unless entity @n[type=chest_minecart,tag=height0,dx=0,dz=0,dy=2] run summon chest_minecart ~ ~ ~ {Tags:["npc","lobby","minecart","precedence","height0"],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"mainlobby:nothing"}
execute unless entity @n[type=chest_minecart,tag=height1,dx=0,dz=0,dy=2] run summon chest_minecart ~ ~0.7 ~ {Tags:["npc","lobby","minecart","precedence","height1"],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"mainlobby:nothing"}
execute unless entity @n[type=chest_minecart,tag=height2,dx=0,dz=0,dy=2] run summon chest_minecart ~ ~1.4 ~ {Tags:["npc","lobby","minecart","precedence","height2"],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"mainlobby:nothing"}


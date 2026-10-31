
execute positioned 296 100 130.999 if entity @s[scores={stat.player=1..3},dx=8,dz=-3,dy=4,tag=!debug,gamemode=!spectator] at @s run tp @s ~ ~ 132

execute positioned 291 105 160.999 if entity @s[scores={stat.player=1..3},dx=18,dz=0.5,dy=4,tag=!debug,gamemode=!spectator] at @s run tp @s ~ ~ 163
execute positioned 291 105 160.5 if entity @s[scores={stat.player=1..3},dx=18,dz=0.5,dy=4,tag=!debug,gamemode=!spectator] at @s run tp @s ~ ~ 159
execute positioned 291 105 138.999 if entity @s[scores={stat.player=1..3},dx=18,dz=0.5,dy=4,tag=!debug,gamemode=!spectator] at @s run tp @s ~ ~ 141
execute positioned 291 105 138.5 if entity @s[scores={stat.player=1..3},dx=18,dz=0.5,dy=4,tag=!debug,gamemode=!spectator] at @s run tp @s ~ ~ 137

execute unless entity @s[tag=repairable] run return fail

execute unless score @s window = @s window run scoreboard players set @s window -1

scoreboard players add @s[scores={window=1..},predicate=map:is_sneaking] window.timer 1

execute if entity @s[scores={window=0,window0=0}] run function map:window/leave_window
execute if entity @s[scores={window=1}] run function map:window/leave_window
scoreboard players set @s[scores={window=2}] window 1

tag @s remove repairable



scoreboard players add @s map 1
scoreboard players set @s[scores={map=5..}] map 3

execute store result entity @s data.map int 1 run scoreboard players get @s map
execute at @s run function mainlobby:hologram/round/trigger/switch_map_tellraw with entity @s data
execute at @s run function mainlobby:hologram/round/spawn with entity @s data
execute if entity @s[tag=origin.p2] run return 0
execute if entity @s[tag=origin.depart] run return 0
execute if entity @s[tag=origin.arrive] run return 0
execute if score @s origin.volley matches 1 run return 0
execute if score @s origin.tool matches 1.. run return 0
execute if score @s origin.cast matches 1.. run return 0
execute unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] run return 0
function zombie:skill/creation/origin/volley/save
scoreboard players set @s origin.volley 1
scoreboard players set @s origin.volley_t 0
item replace entity @s weapon.mainhand with minecraft:diamond_pickaxe
particle minecraft:firework ~ ~1.8 ~ 0 0 0 0.1 5 force @a[scores={system.room=4..,particle=0..1},distance=..80]
function zombie:skill/creation/origin/shovel/launch
return 1

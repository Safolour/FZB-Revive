execute if score @s fl.id matches 700 run tp @e[type=marker,tag=firelord.p5.chase.target,limit=1] 368 117 288
execute if score @s fl.id matches 700 positioned 368 117 288 if entity @s[distance=..0.10] run scoreboard players set @s fl.id 701
execute if score @s fl.id matches 701 run tp @e[type=marker,tag=firelord.p5.chase.target,limit=1] 377.5 116 299.5

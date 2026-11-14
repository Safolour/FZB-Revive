execute if score @s fl.id matches 600 run tp @e[type=marker,tag=firelord.p5.chase.target,limit=1] 377 120 279
execute if score @s fl.id matches 600 positioned 377 120 279 if entity @s[distance=..0.10] run scoreboard players set @s fl.id 601
execute if score @s fl.id matches 601 run tp @e[type=marker,tag=firelord.p5.chase.target,limit=1] 388.5 116 288.5

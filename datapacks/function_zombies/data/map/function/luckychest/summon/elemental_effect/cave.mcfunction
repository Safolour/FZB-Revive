
kill @e[tag=luckychest,tag=cave]

summon interaction 42 25 108 {Tags:["luckychest","cave","interactable"],data:{area:cave}}
summon interaction 42 25 109 {Tags:["luckychest","cave","interactable"],data:{area:cave}}


summon marker 42 25 108 {Tags:["luckychest","cave","chosen"],data:{area:cave,item:{id:""}}}

scoreboard players operation price luckychest.price = price luckychest

execute as @e[tag=chosen] at @s run tp @s ~ ~ ~0.5
execute as @e[type=marker,tag=chosen] at @s run scoreboard players operation @s luckychest.price = price luckychest

tag @e[tag=chosen] remove chosen
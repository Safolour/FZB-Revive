
kill @e[tag=luckychest,tag=portal_lab]

summon interaction 307 92 130 {Tags:["luckychest","portal_lab","interactable"],data:{area:portal_lab}}
summon interaction 308 92 130 {Tags:["luckychest","portal_lab","interactable"],data:{area:portal_lab}}


summon marker 307 92 130 {Tags:["luckychest","portal_lab","chosen"],data:{area:portal_lab,item:{id:""}}}

execute positioned 307 92 130.0 unless entity @e[type=item_display,limit=1,distance=..0.25] rotated 0 0 run function animated_java:large_chest/summon {args:{}}

scoreboard players operation price luckychest.price = price luckychest

execute as @e[tag=chosen] at @s run tp @s ~0.5 ~ ~
execute as @e[type=marker,tag=chosen] at @s run scoreboard players operation @s luckychest.price = price luckychest

tag @e[tag=chosen] remove chosen

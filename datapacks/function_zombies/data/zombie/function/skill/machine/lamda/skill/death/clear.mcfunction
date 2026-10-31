scoreboard players operation match zombie.number = @s zombie.lamda.match
execute as @e[type=item_display,tag=aj.lamda.root] if score @s zombie.lamda.match = match zombie.number run tag @s add target

execute as @e[type=item_display,tag=aj.lamda.root,tag=target] run function animated_java:lamda/remove/this

scoreboard players reset match zombie.number
tag @e[type=item_display] remove target

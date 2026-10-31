execute as @e[type=item_display, tag=aj.large_chest.root] at @s run playsound block.chest.close ambient @a ~ ~ ~ 1 1

execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_close/play

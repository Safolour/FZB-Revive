
execute store result score frame luckychest.frame run data get storage aj:temp frame
execute unless score frame luckychest.frame = frame luckychest.frame run scoreboard players set frame luckychest.frame 1

execute if score frame luckychest.frame matches 1 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:10}
execute if score frame luckychest.frame matches 2 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:10}
execute if score frame luckychest.frame matches 3 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:10}
execute if score frame luckychest.frame matches 4 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:9}
execute if score frame luckychest.frame matches 5 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:9}
execute if score frame luckychest.frame matches 6 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:8}
execute if score frame luckychest.frame matches 7 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:7}
execute if score frame luckychest.frame matches 8 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:6}
execute if score frame luckychest.frame matches 9 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:5}
execute if score frame luckychest.frame matches 10 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:4}
execute if score frame luckychest.frame matches 11 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:3}
execute if score frame luckychest.frame matches 12 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:2}
execute if score frame luckychest.frame matches 13 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:1}
execute if score frame luckychest.frame matches 14 run execute as @e[type=item_display, tag=aj.large_chest.root] run function animated_java:large_chest/animations/animation_model_open/set_frame {frame:0}

scoreboard players reset frame luckychest.frame

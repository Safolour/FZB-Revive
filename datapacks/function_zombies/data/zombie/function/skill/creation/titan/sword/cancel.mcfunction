# Call as the Titan before an overriding eclipse/death phase; flying swords stay owner-isolated.
scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=marker,tag=titan.sword.anchor] if score @s origin.owner = #owner origin.owner run function zombie:skill/creation/titan/sword/cleanup
execute as @e[type=item_display,tag=titan.sword.model] if score @s origin.owner = #owner origin.owner run kill @s
execute if entity @s[tag=titan.sword.cast] run function zombie:skill/creation/titan/sword/finish

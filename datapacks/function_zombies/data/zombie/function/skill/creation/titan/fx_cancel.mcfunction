execute if entity @s[tag=titan.sword.anchor] run return run function zombie:skill/creation/titan/sword/cleanup
scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=item_display,tag=titan.lightning.circle] if score @s origin.owner = #owner origin.owner run kill @s
kill @s

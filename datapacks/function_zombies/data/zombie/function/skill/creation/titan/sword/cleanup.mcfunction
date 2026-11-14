scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=item_display,tag=titan.sword.model] if score @s origin.owner = #owner origin.owner run kill @s
kill @s

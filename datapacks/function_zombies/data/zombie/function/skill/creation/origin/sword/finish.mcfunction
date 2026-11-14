scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[tag=origin.sword_fx] if score @s origin.owner = #owner origin.owner run kill @s

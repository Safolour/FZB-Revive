scoreboard players add @s zombie.electric.bomber.burst.skill_timer 1

tp @s ~ ~ ~ ~9 ~
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^ ^ ^8 0 0 0 0 1 force @a[scores={particle=0..1}]
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^ ^ ^-8 0 0 0 0 1 force @a[scores={particle=0..1}]
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^8 ^ ^ 0 0 0 0 1 force @a[scores={particle=0..1}]
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^-8 ^ ^ 0 0 0 0 1 force @a[scores={particle=0..1}]
tp @s ~ ~ ~ ~9 ~
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^ ^ ^8 0 0 0 0 1 force @a[scores={particle=0..}]
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^ ^ ^-8 0 0 0 0 1 force @a[scores={particle=0..}]
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^8 ^ ^ 0 0 0 0 1 force @a[scores={particle=0..}]
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^-8 ^ ^ 0 0 0 0 1 force @a[scores={particle=0..}]

execute if score @s zombie.electric.bomber.burst.skill_timer matches 100.. run function zombie:skill/electric/tnt/burst/tnt/explosion

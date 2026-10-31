scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_timer 1

tp @s ~ ~ ~ ~9 ~
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^ ^ ^7 0 0 0 0 1 force @a[scores={particle=0..1}]
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^ ^ ^-7 0 0 0 0 1 force @a[scores={particle=0..1}]
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^7 ^ ^ 0 0 0 0 1 force @a[scores={particle=0..1}]
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^-7 ^ ^ 0 0 0 0 1 force @a[scores={particle=0..1}]
tp @s ~ ~ ~ ~9 ~
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^ ^ ^7 0 0 0 0 1 force @a[scores={particle=0..}]
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^ ^ ^-7 0 0 0 0 1 force @a[scores={particle=0..}]
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^7 ^ ^ 0 0 0 0 1 force @a[scores={particle=0..}]
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^-7 ^ ^ 0 0 0 0 1 force @a[scores={particle=0..}]

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 30.. run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_tnt/tnt/explosion

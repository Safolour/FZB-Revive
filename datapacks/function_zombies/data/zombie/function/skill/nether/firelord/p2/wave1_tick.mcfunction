execute unless entity @s[tag=firelord.p2.first_spawn] if entity @e[type=marker,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave_first_spawn
execute if entity @s[tag=firelord.p2.first_spawn] run scoreboard players add @s fl.p2.ashes 1
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave10,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave1_spawn0
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave11,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave1_spawn1
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave12,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave1_spawn2
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave13,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave1_spawn3
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave14,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave1_spawn4
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave15,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave1_spawn5
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave16,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave1_spawn6
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave17,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave1_spawn7
execute as @e[type=marker,tag=firelord.p2.spawn.extra1_8,tag=firelord.p2.spawn.ready] at @s run function zombie:skill/nether/firelord/p2/spawn/wave1_spawn0
kill @e[type=marker,tag=firelord.p2.spawn.extra1_8,tag=firelord.p2.spawn.ready]
execute as @e[type=marker,tag=firelord.p2.spawn.extra1_9,tag=firelord.p2.spawn.ready] at @s run function zombie:skill/nether/firelord/p2/spawn/wave1_spawn0
kill @e[type=marker,tag=firelord.p2.spawn.extra1_9,tag=firelord.p2.spawn.ready]
execute as @e[type=marker,tag=firelord.p2.spawn.extra1_10,tag=firelord.p2.spawn.ready] at @s run function zombie:skill/nether/firelord/p2/spawn/wave1_spawn0
kill @e[type=marker,tag=firelord.p2.spawn.extra1_10,tag=firelord.p2.spawn.ready]
execute as @e[type=marker,tag=firelord.p2.spawn.extra1_11,tag=firelord.p2.spawn.ready] at @s run function zombie:skill/nether/firelord/p2/spawn/wave1_spawn0
kill @e[type=marker,tag=firelord.p2.spawn.extra1_11,tag=firelord.p2.spawn.ready]
execute as @e[type=marker,tag=firelord.p2.spawn.extra1_12,tag=firelord.p2.spawn.ready] at @s run function zombie:skill/nether/firelord/p2/spawn/wave1_spawn0
kill @e[type=marker,tag=firelord.p2.spawn.extra1_12,tag=firelord.p2.spawn.ready]
execute as @e[type=marker,tag=firelord.p2.spawn.extra1_13,tag=firelord.p2.spawn.ready] at @s run function zombie:skill/nether/firelord/p2/spawn/wave1_spawn0
kill @e[type=marker,tag=firelord.p2.spawn.extra1_13,tag=firelord.p2.spawn.ready]
execute if entity @s[tag=firelord.p2.first_spawn] unless entity @e[type=marker,tag=firelord.p2.spawn.target] unless entity @e[tag=!skill.firelord,tag=firelord.p2.wave1,scores={zombie.health=1..}] run return run function zombie:skill/nether/firelord/p2/wave2
execute if score @s fl.p2.ashes matches 501.. run function zombie:skill/nether/firelord/p2/wave2

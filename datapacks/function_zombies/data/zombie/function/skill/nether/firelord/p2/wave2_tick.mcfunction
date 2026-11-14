execute unless entity @s[tag=firelord.p2.first_spawn] if entity @e[type=marker,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave_first_spawn
execute if entity @s[tag=firelord.p2.first_spawn] run scoreboard players add @s fl.p2.ashes 1
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave20,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave2_spawn0
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave21,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave2_spawn1
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave22,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave2_spawn2
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave23,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave2_spawn3
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave24,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave2_spawn4
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave25,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave2_spawn5
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave26,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave2_spawn6
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave27,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave2_spawn7
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave28,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave2_spawn8
execute if entity @e[type=marker,tag=firelord.p2.spawn.wave29,tag=firelord.p2.spawn.ready] run function zombie:skill/nether/firelord/p2/wave2_spawn9
execute as @e[type=marker,tag=firelord.p2.spawn.extra2_10,tag=firelord.p2.spawn.ready] at @s run function zombie:skill/nether/firelord/p2/spawn/wave2_spawn0
kill @e[type=marker,tag=firelord.p2.spawn.extra2_10,tag=firelord.p2.spawn.ready]
execute as @e[type=marker,tag=firelord.p2.spawn.extra2_11,tag=firelord.p2.spawn.ready] at @s run function zombie:skill/nether/firelord/p2/spawn/wave2_spawn0
kill @e[type=marker,tag=firelord.p2.spawn.extra2_11,tag=firelord.p2.spawn.ready]
execute as @e[type=marker,tag=firelord.p2.spawn.extra2_12,tag=firelord.p2.spawn.ready] at @s run function zombie:skill/nether/firelord/p2/spawn/wave2_spawn0
kill @e[type=marker,tag=firelord.p2.spawn.extra2_12,tag=firelord.p2.spawn.ready]
execute as @e[type=marker,tag=firelord.p2.spawn.extra2_13,tag=firelord.p2.spawn.ready] at @s run function zombie:skill/nether/firelord/p2/spawn/wave2_spawn0
kill @e[type=marker,tag=firelord.p2.spawn.extra2_13,tag=firelord.p2.spawn.ready]
execute if entity @s[tag=firelord.p2.first_spawn] unless entity @e[type=marker,tag=firelord.p2.spawn.target] unless entity @e[tag=!skill.firelord,tag=firelord.p2.wave2] run return run function zombie:skill/nether/firelord/p2/ashes
execute if score @s fl.p2.ashes matches 501 as @e[type=husk,tag=firelord.p2.wave2,tag=!skill.suicidezombie.death] at @s run function zombie:skill/nether/ashes/suicide_zombie/suicide/suicide

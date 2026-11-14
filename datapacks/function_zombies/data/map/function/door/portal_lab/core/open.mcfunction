# Replay 02:09:17.812: these 24 blocks become air.
data modify storage map:r40 core_door_active set value 1b
fill 299 92 171 301 95 172 air
scoreboard players set lab_core door.open 1
execute as @e[tag=door,tag=lab_core] run function system:death
execute if data storage map:r40 p5 run function zombie:skill/nether/firelord/p5/terminal/spawn

execute store result storage map temperature_tier.t int 1 run scoreboard players get temperature0 area.temperature
function map:area/lab/temperature/tellraw/tier0 with storage map temperature_tier
data remove storage map temperature_tier
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 2 1

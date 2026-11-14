# 09/30 and 10/20: four large blocks each tick, unlike Origin's three small blocks.
scoreboard players operation #owner origin.owner = @s origin.owner
function zombie:skill/creation/origin/transition/debris_spawn
function zombie:skill/creation/origin/transition/debris_spawn
function zombie:skill/creation/origin/transition/debris_spawn
function zombie:skill/creation/origin/transition/debris_spawn
playsound minecraft:entity.magma_cube.hurt hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 1
# Three independently sampled block-marker colors; spatial envelopes are recorded.
execute store result score #titan.marker origin.target run random value 0..2
execute if score #titan.marker origin.target matches 0 run particle minecraft:block_marker{block_state:"minecraft:black_concrete"} ~ ~5 ~ 2 4 2 0 2 force @a[scores={system.room=4..,particle=0}]
execute store result score #titan.marker origin.target run random value 0..2
execute if score #titan.marker origin.target matches 0 run particle minecraft:block_marker{block_state:"minecraft:red_concrete"} ~ ~5 ~ 2 4 2 0 2 force @a[scores={system.room=4..,particle=0}]
execute store result score #titan.marker origin.target run random value 0..2
execute if score #titan.marker origin.target matches 0 run particle minecraft:block_marker{block_state:"minecraft:white_concrete"} ~ ~5 ~ 2 4 2 0 2 force @a[scores={system.room=4..,particle=0}]

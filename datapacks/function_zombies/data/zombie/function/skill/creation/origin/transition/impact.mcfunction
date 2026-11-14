# ClearAura 09/30: concrete motes begin at the concealed spawn and resume at the arrival point.
execute if score @s origin.phase_age matches 61 positioned 300.5 78 150.5 run particle minecraft:block_marker{block_state:"minecraft:red_concrete"} ~ ~ ~ 2 4 2 0 2 force @a[scores={system.room=4..,particle=0}]
execute if score @s origin.phase_age matches 61 positioned 300.5 78 150.5 run particle minecraft:block_marker{block_state:"minecraft:white_concrete"} ~ ~ ~ 2 4 2 0 2 force @a[scores={system.room=4..,particle=0}]
execute if score @s origin.phase_age matches 63 positioned 300.5 78 150.5 run particle minecraft:block_marker{block_state:"minecraft:red_concrete"} ~ ~ ~ 2 4 2 0 2 force @a[scores={system.room=4..,particle=0}]
execute if score @s origin.phase_age matches 64 positioned 300.5 78 150.5 run particle minecraft:block_marker{block_state:"minecraft:white_concrete"} ~ ~ ~ 2 4 2 0 2 force @a[scores={system.room=4..,particle=0}]
execute if score @s origin.phase_age matches 65 positioned 300.5 74 150.5 run particle minecraft:squid_ink ~ ~ ~ 0 0 0 0.2 50 force @a[scores={system.room=4..,particle=0}]
# Both replays have eight distinct ticks, from the first arrival debris through its last batch.
execute if score @s origin.phase_age matches 66..73 positioned 352.5 92 135.5 run playsound minecraft:entity.magma_cube.hurt hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 1
execute if score @s origin.phase_age matches 66 positioned 352.5 97 135.5 run function zombie:skill/creation/origin/transition/arrival_motes {color:"black"}
execute if score @s origin.phase_age matches 66 positioned 352.5 97 135.5 run function zombie:skill/creation/origin/transition/arrival_motes {color:"red"}
execute if score @s origin.phase_age matches 66 positioned 352.5 97 135.5 run function zombie:skill/creation/origin/transition/arrival_motes {color:"white"}
execute if score @s origin.phase_age matches 67 positioned 352.5 97 135.5 run function zombie:skill/creation/origin/transition/arrival_motes {color:"red"}
execute if score @s origin.phase_age matches 68 positioned 352.5 97 135.5 run function zombie:skill/creation/origin/transition/arrival_motes {color:"white"}
execute if score @s origin.phase_age matches 69 positioned 352.5 97 135.5 run function zombie:skill/creation/origin/transition/arrival_motes {color:"red"}
execute if score @s origin.phase_age matches 70..71 positioned 352.5 97 135.5 run function zombie:skill/creation/origin/transition/arrival_motes {color:"black"}
execute if score @s origin.phase_age matches 71 positioned 352.5 97 135.5 run function zombie:skill/creation/origin/transition/arrival_motes {color:"red"}
execute if score @s origin.phase_age matches 70..71 positioned 352.5 97 135.5 run function zombie:skill/creation/origin/transition/arrival_motes {color:"white"}
execute if score @s origin.phase_age matches 73 positioned 352.5 97 135.5 run function zombie:skill/creation/origin/transition/arrival_motes {color:"white"}

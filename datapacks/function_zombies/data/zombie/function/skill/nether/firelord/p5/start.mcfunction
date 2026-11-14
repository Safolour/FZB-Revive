data remove storage map:r40 r41_cleaned
data modify storage map:r40 p5 set value 1b
scoreboard players set #p5_timer area.temperature 0
scoreboard players set #p5_breach area.temperature 0
data remove storage map:r40 p5_breached
scoreboard players set #r40_timer area.temperature 0
function map:door/portal_lab/core/free
function map:area/lab/floor/nether/final/2
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.8.0"}
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.6.0"}
execute as @a[scores={system.room=4..}] at @s run playsound block.anvil.land hostile @s ~ ~ ~ 1.5 2
execute as @e[type=zombie,tag=skill.firelord,tag=firelord.p4] at @s run function zombie:skill/nether/firelord/p5/boss
tag @e[type=ghast,tag=firelord.p2.ghast] remove firelord.p5.chase
kill @e[type=marker,tag=firelord.p5.chase.target]
tag @e[type=ghast,tag=firelord.p2.ghast] remove firelord.p5.breach_wait
tag @e[type=ghast,tag=firelord.p2.ghast] remove firelord.p2.bombing
tag @e[type=ghast,tag=firelord.p2.ghast] remove firelord.p2.bomb_arrived
execute as @e[type=ghast,tag=firelord.p2.ghast] at @s run function zombie:skill/nether/firelord/p2/ghast/target
kill @e[type=marker,tag=firelord.p4.meteor.wave]
kill @e[type=marker,tag=firelord.p2.meteor.grid]
execute as @e[type=marker,tag=firelord.p2.safe] at @s run function zombie:skill/nether/firelord/p2/safe_remove
function map:music/firelord/p2/start
function map:game/scoreboard/round
execute store success score #p5_core_kept area.temperature run forceload query 300 196
execute if score #p5_core_kept area.temperature matches 0 run forceload add 300 196
data modify storage map:r40 p5_core_forceload set value 1b
setblock 300 88 196 minecraft:lever[face=wall,facing=north,powered=false]
function zombie:skill/nether/firelord/p5/terminal/prepare
function zombie:skill/nether/firelord/p5/hazards/init

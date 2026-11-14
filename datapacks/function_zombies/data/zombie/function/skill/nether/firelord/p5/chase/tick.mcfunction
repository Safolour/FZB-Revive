execute unless data storage map:r40 p5_closed run return 0
execute unless entity @e[type=marker,tag=firelord.p5.chase.target,limit=1] run return 0
execute if score @s fl.id matches 0 positioned 300.800 95.930 185.340 if entity @s[distance=..0.10] run function zombie:skill/nether/firelord/p5/chase/choose_first
execute if score @s fl.id matches 100..199 run function zombie:skill/nether/firelord/p5/chase/first_a
execute if score @s fl.id matches 200..299 run function zombie:skill/nether/firelord/p5/chase/first_b
execute if score @s fl.id matches 300 run function zombie:skill/nether/firelord/p5/chase/choose_second
execute if score @s fl.id matches 450..499 run function zombie:skill/nether/firelord/p5/chase/connector_a
execute if score @s fl.id matches 400..449 run function zombie:skill/nether/firelord/p5/chase/second_a
execute if score @s fl.id matches 550..599 run function zombie:skill/nether/firelord/p5/chase/connector_b
execute if score @s fl.id matches 500..549 run function zombie:skill/nether/firelord/p5/chase/second_b
execute if score @s fl.id matches 600..699 run function zombie:skill/nether/firelord/p5/chase/tail_a
execute if score @s fl.id matches 700..799 run function zombie:skill/nether/firelord/p5/chase/tail_b
function zombie:skill/nether/firelord/p5/chase/collision
execute unless data storage map:r40 p5_closed run return 0
function zombie:skill/nether/firelord/p5/chase/speed
execute as @a[gamemode=adventure,scores={system.room=4..,stat.player=1},distance=..12] at @s run function zombie:skill/nether/firelord/p5/chase/aura
execute if score @s fl.mode matches 1.. run scoreboard players remove @s fl.mode 1
# Finish a short remaining step at the target so a turn cannot be skipped.
execute if score @s fl.id matches 100..599 if score @s fl.val matches 75 if entity @e[type=marker,tag=firelord.p5.chase.target,distance=..0.075,limit=1] run return run function zombie:skill/nether/firelord/p5/chase/move_snap
execute if score @s fl.id matches 100..599 if score @s fl.val matches 35 if entity @e[type=marker,tag=firelord.p5.chase.target,distance=..0.035,limit=1] run return run function zombie:skill/nether/firelord/p5/chase/move_snap
execute if score @s fl.id matches 100..599 if score @s fl.val matches 15 if entity @e[type=marker,tag=firelord.p5.chase.target,distance=..0.015,limit=1] run return run function zombie:skill/nether/firelord/p5/chase/move_snap
execute if score @s fl.id matches 100..599 if score @s fl.val matches 10 if entity @e[type=marker,tag=firelord.p5.chase.target,distance=..0.010,limit=1] run return run function zombie:skill/nether/firelord/p5/chase/move_snap
execute at @s facing entity @e[type=marker,tag=firelord.p5.chase.target,limit=1] feet if score @s fl.val matches 75 run tp @s ^ ^ ^0.075 ~ ~
execute at @s facing entity @e[type=marker,tag=firelord.p5.chase.target,limit=1] feet if score @s fl.val matches 35 run tp @s ^ ^ ^0.035 ~ ~
execute at @s facing entity @e[type=marker,tag=firelord.p5.chase.target,limit=1] feet if score @s fl.val matches 15 run tp @s ^ ^ ^0.015 ~ ~
execute at @s facing entity @e[type=marker,tag=firelord.p5.chase.target,limit=1] feet if score @s fl.val matches 10 run tp @s ^ ^ ^0.010 ~ ~

function zombie:skill/creation/origin/volley/migrate
function zombie:skill/creation/origin/active
execute if score @s origin.busy matches 1 run return 0
execute store success score #origin.destination_ok origin.target run function zombie:skill/creation/origin/random_position
execute if score #origin.destination_ok origin.target matches 0 run return 0
function zombie:skill/creation/origin/volley/finish
playsound minecraft:entity.ender_eye.death hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 0
playsound minecraft:block.bell.resonate hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 1
playsound minecraft:entity.warden.death hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 1
particle squid_ink ~ ~1 ~ 0 0 0 0.2 50 force @a[scores={particle=0},distance=..64]
execute at @s run summon marker ~ ~ ~ {Tags:["origin.destination"]}
execute at @s run scoreboard players set @e[type=marker,tag=origin.destination,sort=nearest,limit=1,distance=..1] zombie.skill_timer 12
data merge entity @s {NoAI:1b}
tp @s ~ ~10000 ~
tag @s remove origin.depart
tag @s add origin.arrive
scoreboard players set @s zombie.skill_timer 8

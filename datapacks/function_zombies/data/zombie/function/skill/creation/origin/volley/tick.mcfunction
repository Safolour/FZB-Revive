execute unless score @s origin.volley matches 1 run return 0
execute if entity @s[tag=origin.depart] run return run function zombie:skill/creation/origin/volley/finish
execute if entity @s[tag=origin.arrive] run return run function zombie:skill/creation/origin/volley/finish
execute unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] run return run function zombie:skill/creation/origin/volley/finish
scoreboard players add @s origin.volley_t 1
execute if score @s origin.volley_t matches 5 run function zombie:skill/creation/origin/shovel/launch
execute if score @s origin.volley_t matches 10 run function zombie:skill/creation/origin/shovel/launch
execute if score @s origin.volley_t matches 15 run function zombie:skill/creation/origin/shovel/launch
execute if score @s origin.volley_t matches 16 run function zombie:skill/creation/origin/shovel/launch
# Brief player-local aura during the volley; keep the shooter effects separate.
execute if score @s origin.volley_t matches 2 as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..32] at @s run particle minecraft:firework ~ ~1.1 ~ 0.16 0.27 0.16 0.015 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
execute if score @s origin.volley_t matches 6 as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..32] at @s run particle minecraft:firework ~ ~1.1 ~ 0.16 0.27 0.16 0.015 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
execute if score @s origin.volley_t matches 10 as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..32] at @s run particle minecraft:firework ~ ~1.1 ~ 0.16 0.27 0.16 0.015 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
execute if score @s origin.volley_t matches 14 as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..32] at @s run particle minecraft:firework ~ ~1.1 ~ 0.16 0.27 0.16 0.015 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
execute if score @s origin.volley_t matches 18 as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..32] at @s run particle minecraft:firework ~ ~1.1 ~ 0.16 0.27 0.16 0.015 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
execute if score @s origin.volley_t matches 19 run return run function zombie:skill/creation/origin/pickaxe/launch
execute if score @s origin.volley_t matches 20.. run function zombie:skill/creation/origin/volley/finish

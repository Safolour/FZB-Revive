scoreboard players add @s zombie.skill_timer 1
particle flame ~ ~ ~ 0.04 0.04 0.04 0.03 3 force @a[scores={particle=0}]
particle flame ~ ~ ~ 0.04 0.04 0.04 0.03 1 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run particle flame ~ ~ ~ 0.04 0.04 0.04 0.03 1 force @a[scores={particle=1}]
particle large_smoke ~ ~ ~ 0 0 0 0.01 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle large_smoke ~ ~ ~ 0 0 0 0.01 1 force @a[scores={particle=1}]
particle dripping_lava ~ ~ ~ 0.02 0.02 0.02 0 2 force @a[scores={particle=0}]
particle dripping_lava ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[scores={particle=1}]
execute facing entity @e[type=marker,tag=firelord.travel.target,limit=1,sort=nearest] feet run function zombie:skill/nether/firelord/travel/spiral
execute if entity @e[type=marker,tag=firelord.travel.target,distance=..0.7] run return run function zombie:skill/nether/firelord/travel/arrive
execute if score @s zombie.skill_timer matches 100.. run return run function zombie:skill/nether/firelord/travel/arrive
execute facing entity @e[type=marker,tag=firelord.travel.target,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.4

execute if score #p2link zombie.skill_timer matches ..0 run return 0
execute if entity @e[type=marker,tag=firelord.p2.linktarget,distance=..0.6] run return 0
particle flame ~ ~ ~ 0 0 0 100000 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flame ~ ~ ~ 0 0 0 100000 1 force @a[scores={particle=1}]
scoreboard players remove #p2link zombie.skill_timer 1
execute positioned ^ ^ ^0.5 run function zombie:skill/nether/firelord/p2/link_step

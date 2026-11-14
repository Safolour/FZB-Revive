execute if score #p4link zombie.skill_timer matches ..0 run return 0
execute if entity @e[type=marker,tag=firelord.p4.commander.linktarget,distance=..0.6] run return 0
particle soul_fire_flame ~ ~ ~ 0 0 0 100000 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle soul_fire_flame ~ ~ ~ 0 0 0 100000 1 force @a[scores={particle=1}]
scoreboard players remove #p4link zombie.skill_timer 1
execute positioned ^ ^ ^0.5 run function zombie:skill/nether/firelord/p4/legion/link_step

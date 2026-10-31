execute positioned 482 100 660 unless entity @a[distance=..33] run return fail

execute unless entity @e[type=marker,tag=lobby.summer.particle.0] run summon marker 482 117 660 {Tags:["lobby.summer.particle.0"]}
execute unless entity @e[type=marker,tag=lobby.summer.particle.1] run summon marker 482 117 660 {Tags:["lobby.summer.particle.1"]}
execute as @e[type=marker,tag=lobby.summer.particle.0] at @s run function decoration:lobby/summer/tick0
execute as @e[type=marker,tag=lobby.summer.particle.1] at @s run function decoration:lobby/summer/tick1

execute if entity @s[tag=titan.awaiting] run return 0
execute unless entity @s[tag=titan.ready] run function zombie:skill/creation/titan/init
execute unless entity @s[tag=titan.combo.ready] run function zombie:skill/creation/titan/combo/reset
execute if entity @s[scores={zombie.health=..0}] run return 0
scoreboard players add @s titan.age 1
scoreboard players remove @s titan.light_cd 1
function zombie:skill/creation/titan/melee/ordinary_tick
function zombie:skill/creation/titan/melee/tick
execute if entity @s[tag=titan.eclipse.cast] run return run function zombie:skill/creation/titan/eclipse/cast_tick
execute if entity @s[tag=!titan.tp.active,tag=!titan.scatter.cast,tag=!titan.sword.cast] if score @s titan.light_cd matches ..0 run function zombie:skill/creation/titan/lightning/start
execute if entity @s[tag=!titan.tp.active,tag=!titan.scatter.cast,tag=!titan.sword.cast] if score @s titan.light_cd matches ..0 run scoreboard players set @s titan.light_cd 360
function zombie:skill/creation/titan/teleport/tick

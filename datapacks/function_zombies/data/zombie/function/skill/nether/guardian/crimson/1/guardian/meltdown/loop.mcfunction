
scoreboard players add loop zombie.nether.guardian.suspense.laser 1

execute unless score round game.state matches 40 run particle wax_on ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
execute if score round game.state matches 40 run particle wax_on ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle wax_on ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle wax_on ^ ^ ^0.25 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle wax_on ^ ^ ^0.25 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle wax_on ^ ^ ^0.25 0 0 0 0 1 force @a[scores={particle=1}]
tp @s ^ ^ ^0.5

#execute if entity @a[scores={stat.player=1},distance=..2] as @a[scores={stat.player=1},distance=..2] at @s run function zombie:skill/nether/guardian/crimson/1/guardian/suspense/damage
#execute if entity @a[scores={stat.player=1},distance=..2] run scoreboard players set loop zombie.nether.guardian.suspense.laser 31

execute if entity @e[type=marker,tag=skill.guardian.floor.platform.marker.clear,distance=..2] as @e[type=marker,tag=skill.guardian.floor.platform.marker.clear,distance=..2] at @s run function zombie:skill/nether/guardian/crimson/1/guardian/meltdown/damage

execute if score loop zombie.nether.guardian.suspense.laser matches ..30 at @s run function zombie:skill/nether/guardian/crimson/1/guardian/meltdown/loop

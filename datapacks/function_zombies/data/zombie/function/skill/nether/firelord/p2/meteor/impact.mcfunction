particle explosion ~ ~ ~ 0 0 0 1 3 force @a[scores={particle=0}]
particle explosion ~ ~ ~ 0 0 0 1 1 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run particle explosion ~ ~ ~ 0 0 0 1 1 force @a[scores={particle=1}]
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle flame ~ ~ ~ 0 0 0 0.2 20 force @a[scores={particle=0}]
particle flame ~ ~ ~ 0 0 0 0.2 10 force @a[scores={particle=1}]
particle large_smoke ~ ~ ~ 0 0 0 0.2 20 force @a[scores={particle=0}]
particle large_smoke ~ ~ ~ 0 0 0 0.2 10 force @a[scores={particle=1}]
particle firework ~ ~ ~ 0 0 0 0.2 20 force @a[scores={particle=0}]
particle firework ~ ~ ~ 0 0 0 0.2 10 force @a[scores={particle=1}]
particle lava ~ ~ ~ 0 0 0 0 5 force @a[scores={particle=0}]
particle lava ~ ~ ~ 0 0 0 0 2 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run particle lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
playsound entity.generic.explode hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 1
playsound entity.generic.explode hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 0
scoreboard players set #shielddamage zombie.health 240
execute as @e[type=marker,tag=firelord.p2.safe,distance=..6.6] at @s run function zombie:skill/nether/firelord/p2/safe_hit
# The meteor shadow uses a 2-block horizontal damage radius.
# Flatten both positions to Y=0 so jumping or the display's Y offset cannot create holes.
execute positioned ~ 0 ~ run summon marker ~ ~ ~ {Tags:["firelord.meteor.hit_center"]}
execute positioned ~-2 ~-4 ~-2 as @a[gamemode=adventure,scores={stat.player=1},dx=4,dy=8,dz=4] at @s positioned ~ 0 ~ if entity @e[type=marker,tag=firelord.meteor.hit_center,distance=..2] at @s unless entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run function zombie:skill/nether/firelord/p2/meteor/hit
execute positioned ~ 0 ~ run kill @e[type=marker,tag=firelord.meteor.hit_center,distance=..0.01]

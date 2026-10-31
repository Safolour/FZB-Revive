
execute if entity @s[tag=particle] run particle flame ^ ^ ^ 0.05 0.05 0.05 0 1 force @a[scores={particle=0..1}]
execute if entity @s[tag=particle] run particle dripping_lava ^ ^ ^ 0.05 0.05 0.05 0 1 force @a[scores={particle=0..2}]
execute if entity @s[tag=particle] run particle flame ^ ^ ^0.5 0.05 0.05 0.05 0 1 force @a[scores={particle=0}]
execute if entity @s[tag=particle] run particle dripping_lava ^ ^ ^0.5 0.05 0.05 0.05 0 1 force @a[scores={particle=0}]

scoreboard players add @s zombie.nether.guardian.laser.particle 1
execute if score @s zombie.nether.guardian.laser.particle matches 7.. run scoreboard players set @s zombie.nether.guardian.laser.particle 0
execute if score @s zombie.nether.guardian.laser.particle matches 1 run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/0
execute if score @s zombie.nether.guardian.laser.particle matches 2 run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/1
execute if score @s zombie.nether.guardian.laser.particle matches 3 run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/2
execute if score @s zombie.nether.guardian.laser.particle matches 4 run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/3
execute if score @s zombie.nether.guardian.laser.particle matches 5 run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/4
execute if score @s zombie.nether.guardian.laser.particle matches 6 run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/5
execute if score @s zombie.nether.guardian.laser.particle matches 7 run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/6


execute as @s at @s as @e[type=marker,tag=skill.guardian.floor.platform.marker,distance=..2] run tag @s add skill.guardian.floor.platform.marker.break
execute as @s at @s as @a[scores={stat.player=1},distance=..1] at @s run function zombie:skill/nether/guardian/crimson/0/skill/laser/damage
execute if entity @s[scores={zombie.nether.guardian.laser.reflection=1..}] positioned ^ ^ ^1 run function zombie:skill/nether/guardian/crimson/6/skill/laser/reflection/reflection
execute unless entity @s[scores={zombie.nether.guardian.laser.reflection=1..}] unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.nether.guardian.laser 447
scoreboard players remove range zombie.nether.guardian.laser 1

execute if score range zombie.nether.guardian.laser matches 1.. run tp @s ^ ^ ^1
execute if score range zombie.nether.guardian.laser matches 1.. as @s at @s run function zombie:skill/nether/guardian/crimson/0/skill/laser/tp
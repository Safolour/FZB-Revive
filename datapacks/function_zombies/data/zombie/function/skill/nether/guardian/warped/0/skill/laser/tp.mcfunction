
#execute if entity @s[tag=particle] run particle soul_fire_flame ~ ~ ~ 0.02 0.02 0.02 0 1 force @a
execute if entity @s[tag=particle] if score @s zombie.nether.guardian.laser matches 2.. run particle dripping_water ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[scores={particle=0..1}]
execute if entity @s[tag=particle] if score @s zombie.nether.guardian.laser matches 2.. run particle dripping_water ^ ^ ^-0.5 0.02 0.02 0.02 0 1 force @a[scores={particle=0..2}]

scoreboard players add @s zombie.nether.guardian.laser.particle 1
execute if score @s zombie.nether.guardian.laser.particle matches 7.. run scoreboard players set @s zombie.nether.guardian.laser.particle 0
execute if score @s zombie.nether.guardian.laser.particle matches 1 if score @s zombie.nether.guardian.laser matches 10.. run function zombie:skill/nether/warped/warped_guardian_zombie/particle/0
execute if score @s zombie.nether.guardian.laser.particle matches 2 if score @s zombie.nether.guardian.laser matches 10.. run function zombie:skill/nether/warped/warped_guardian_zombie/particle/1
execute if score @s zombie.nether.guardian.laser.particle matches 3 if score @s zombie.nether.guardian.laser matches 10.. run function zombie:skill/nether/warped/warped_guardian_zombie/particle/2
execute if score @s zombie.nether.guardian.laser.particle matches 4 if score @s zombie.nether.guardian.laser matches 10.. run function zombie:skill/nether/warped/warped_guardian_zombie/particle/3
execute if score @s zombie.nether.guardian.laser.particle matches 5 if score @s zombie.nether.guardian.laser matches 10.. run function zombie:skill/nether/warped/warped_guardian_zombie/particle/4
execute if score @s zombie.nether.guardian.laser.particle matches 6 if score @s zombie.nether.guardian.laser matches 10.. run function zombie:skill/nether/warped/warped_guardian_zombie/particle/5
execute if score @s zombie.nether.guardian.laser.particle matches 7 if score @s zombie.nether.guardian.laser matches 10.. run function zombie:skill/nether/warped/warped_guardian_zombie/particle/6

#execute if score @s zombie.nether.guardian.laser.particle matches 1 run function zombie:skill/nether/warped/warped_guardian_zombie/particle/3
#execute if score @s zombie.nether.guardian.laser.particle matches 2 run function zombie:skill/nether/warped/warped_guardian_zombie/particle/4
#execute if score @s zombie.nether.guardian.laser.particle matches 3 run function zombie:skill/nether/warped/warped_guardian_zombie/particle/5
#execute if score @s zombie.nether.guardian.laser.particle matches 4 run function zombie:skill/nether/warped/warped_guardian_zombie/particle/6
#execute if score @s zombie.nether.guardian.laser.particle matches 5 run function zombie:skill/nether/warped/warped_guardian_zombie/particle/0
#execute if score @s zombie.nether.guardian.laser.particle matches 6 run function zombie:skill/nether/warped/warped_guardian_zombie/particle/1
#execute if score @s zombie.nether.guardian.laser.particle matches 7 run function zombie:skill/nether/warped/warped_guardian_zombie/particle/2


execute as @s at @s as @e[type=marker,tag=skill.guardian.floor.platform.marker,distance=..2] run tag @s add skill.guardian.floor.platform.marker.break
execute as @s at @s as @a[scores={stat.player=1},distance=..1.5] at @s run function zombie:skill/nether/guardian/warped/0/skill/laser/damage
scoreboard players remove range zombie.nether.guardian.laser 1
scoreboard players add @s zombie.nether.guardian.laser.rotation 23
execute if score @s zombie.nether.guardian.laser.rotation matches 5250.. run scoreboard players remove @s zombie.nether.guardian.laser.rotation 6
execute if score @s zombie.nether.guardian.laser.rotation matches 5500.. run scoreboard players remove @s zombie.nether.guardian.laser.rotation 5
execute if score @s zombie.nether.guardian.laser.rotation matches 5625.. run scoreboard players remove @s zombie.nether.guardian.laser.rotation 4
execute if score @s zombie.nether.guardian.laser.rotation matches 5750.. run scoreboard players remove @s zombie.nether.guardian.laser.rotation 3
execute if score @s zombie.nether.guardian.laser.rotation matches 6000.. run scoreboard players remove @s zombie.nether.guardian.laser.rotation 2
execute if score @s zombie.nether.guardian.laser.rotation matches 6125.. run scoreboard players remove @s zombie.nether.guardian.laser.rotation 1
execute if score @s zombie.nether.guardian.laser.rotation matches 6500.. run scoreboard players remove @s zombie.nether.guardian.laser.rotation 1

scoreboard players set rotation zombie.nether.guardian.laser 7750
scoreboard players operation rotation zombie.nether.guardian.laser -= @s zombie.nether.guardian.laser.rotation
scoreboard players operation rotation zombie.nether.guardian.laser *= rotation zombie.nether.guardian.laser
execute store result entity @s data.root.rotation float 0.000001 run scoreboard players get rotation zombie.nether.guardian.laser
#execute store result entity @s data.root.rotation float 0.0075 run scoreboard players get rotation zombie.nether.guardian.laser
execute if score range zombie.nether.guardian.laser matches 1.. as @s at @s run function zombie:skill/nether/guardian/warped/0/skill/laser/tp0 with entity @s data.root
execute if score range zombie.nether.guardian.laser matches 1.. as @s at @s run tp @s ^ ^ ^1
execute if score range zombie.nether.guardian.laser matches 1.. as @s at @s run function zombie:skill/nether/guardian/warped/0/skill/laser/tp
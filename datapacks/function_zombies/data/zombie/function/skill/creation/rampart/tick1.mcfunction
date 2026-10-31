particle firework ~ ~1 ~ 0 0 0 0.25 2 force @a[scores={particle=0}]

tp @s ~ ~ ~ ~5 ~
particle end_rod ^ ^0.1 ^5 0 0 0 0 1 force @a[scores={particle=0}]
particle end_rod ^ ^0.1 ^-5 0 0 0 0 1 force @a[scores={particle=0..}]

scoreboard players add @a zombie.creation.rampart 1
execute as @a if score @s zombie.creation.rampart matches 79.. run scoreboard players set @s zombie.creation.rampart 0

#execute at @s as @a rotated as @s rotated ~180 ~180 run function zombie:skill/creation/rampart/particle
#execute at @s as @a rotated as @s rotated ~180 ~-180 run function zombie:skill/creation/rampart/particle
#execute at @s as @a rotated as @s rotated ~150 ~150 run function zombie:skill/creation/rampart/particle
execute at @s as @a rotated as @s rotated ~150 ~-150 run function zombie:skill/creation/rampart/particle
#execute at @s as @a rotated as @s rotated ~120 ~120 run function zombie:skill/creation/rampart/particle
#execute at @s as @a rotated as @s rotated ~120 ~-120 run function zombie:skill/creation/rampart/particle
#execute at @s as @a rotated as @s rotated ~90 ~90 run function zombie:skill/creation/rampart/particle
execute at @s as @a rotated as @s rotated ~90 ~-90 run function zombie:skill/creation/rampart/particle
#execute at @s as @a rotated as @s rotated ~60 ~60 run function zombie:skill/creation/rampart/particle
#execute at @s as @a rotated as @s rotated ~60 ~-60 run function zombie:skill/creation/rampart/particle
#execute at @s as @a rotated as @s rotated ~30 ~30 run function zombie:skill/creation/rampart/particle
execute at @s as @a rotated as @s rotated ~30 ~-30 run function zombie:skill/creation/rampart/particle

scoreboard players add @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches 20.. run function zombie:skill/nether/firelord/p3/eclipse/shoot
particle dripping_lava ~ ~ ~ 0.8 0.8 0.8 0 8 force @a[scores={particle=0}]
particle dripping_lava ~ ~ ~ 0.8 0.8 0.8 0 4 force @a[scores={particle=1}]
execute if score @s zombie.skill_timer matches 1 run function zombie:skill/nether/firelord/p3/eclipse/create_visual
function zombie:skill/nether/firelord/p3/eclipse/visual_tick
execute unless entity @s[tag=firelord.eclipse.fall] run tp @s ^ ^ ^0.2
execute store result score #eclipse.y fl.eclipse.v run data get entity @s Pos[1] 1000
execute unless entity @s[tag=firelord.eclipse.fall] if score #eclipse.y fl.eclipse.v matches 111750.. run function zombie:skill/nether/firelord/p3/eclipse/start_fall
execute if entity @s[tag=firelord.eclipse.fall] run function zombie:skill/nether/firelord/p3/eclipse/fall

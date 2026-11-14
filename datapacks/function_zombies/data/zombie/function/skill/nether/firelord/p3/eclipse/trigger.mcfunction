scoreboard players add @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches 130.. as @e[type=zombie,tag=skill.firelord,tag=firelord.p3,tag=firelord.eclipse.wait,limit=1] at @s run function zombie:skill/nether/firelord/p3/eclipse/depart
execute if score @s zombie.skill_timer matches 130.. unless entity @e[type=zombie,tag=skill.firelord,tag=firelord.p3,tag=firelord.eclipse.wait] run kill @s

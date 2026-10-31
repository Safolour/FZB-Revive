scoreboard players operation match zombie.number = @s zombie.lamda.match

execute as @e[type=slime,tag=skill.lamda] if score @s zombie.lamda.match = match zombie.number run tag @s add target

team join collision @e[type=slime,tag=target,team=!collision]

execute as @e[type=slime,tag=target] run tp @s ~ ~0.3 ~

execute as @e[type=item_display,tag=aj.lamda.root] if score @s zombie.lamda.match = match zombie.number run tag @s add target

execute unless entity @s[tag=skill.lamda.spawn] as @e[type=item_display,tag=aj.lamda.root,tag=target] run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=skill.lamda.spawn] as @e[type=item_display,tag=aj.lamda.root,tag=target] run tp @s ~ ~ ~ 0 0

execute if entity @s[tag=skill.lamda.death] at @s run function zombie:skill/machine/lamda/skill/death/tick
execute if entity @s[tag=skill.lamda.damage] at @s run function zombie:skill/machine/lamda/skill/damage/tick
execute if entity @s[tag=skill.lamda.spawn] at @s run function zombie:skill/machine/lamda/spawn/tick

execute if entity @s[tag=skill.lamda.walk.start] at @s run function zombie:skill/machine/lamda/skill/walk/start/tick
execute if entity @s[tag=skill.lamda.walk.loop] at @s run function zombie:skill/machine/lamda/skill/walk/loop/tick
execute if entity @s[tag=skill.lamda.walk.end] at @s run function zombie:skill/machine/lamda/skill/walk/end/tick

execute if entity @s[tag=skill.lamda.attack0] at @s run function zombie:skill/machine/lamda/skill/attack/tick
execute if entity @s[tag=skill.lamda.hitground0] at @s run function zombie:skill/machine/lamda/skill/hit_ground/tick
execute if entity @s[tag=skill.lamda.shoot0] at @s run function zombie:skill/machine/lamda/skill/shoot/tick

execute if entity @s[tag=skill.lamda.sprint0] at @s run function zombie:skill/machine/lamda/skill/sprint/tick
execute if entity @s[tag=skill.lamda.laser0] at @s run function zombie:skill/machine/lamda/skill/laser/tick




execute if score @s zombie.lamda.skill_cooldowntimer matches 1.. run scoreboard players remove @s zombie.lamda.skill_cooldowntimer 1

scoreboard players reset match zombie.number
tag @e[type=slime] remove target
tag @e[type=item_display] remove target

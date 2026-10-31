scoreboard players operation match zombie.number = @s zombie.chaos.chaos_golem.match

execute as @e[type=slime,tag=skill.chaosgolem] if score @s zombie.chaos.chaos_golem.match = match zombie.number run tag @s add target

team join collision @e[type=slime,tag=target,team=!collision]

execute as @e[type=slime,tag=target] run tp @s ~ ~0.3 ~

execute as @e[type=item_display,tag=aj.chaos_golem.root] if score @s zombie.chaos.chaos_golem.match = match zombie.number run tag @s add target

execute unless entity @s[tag=skill.chaosgolem.spawn] as @e[type=item_display,tag=aj.chaos_golem.root,tag=target] run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=skill.chaosgolem.spawn] as @e[type=item_display,tag=aj.chaos_golem.root,tag=target] run tp @s ~ ~ ~ 0 0

execute if entity @s[tag=skill.chaosgolem.death] at @s run function zombie:skill/chaos/chaos_golem/skill/death/tick
execute if entity @s[tag=skill.chaosgolem.damage] at @s run function zombie:skill/chaos/chaos_golem/skill/damage/tick
execute if entity @s[tag=skill.chaosgolem.spawn] at @s run function zombie:skill/chaos/chaos_golem/spawn/tick

execute if entity @s[tag=skill.chaosgolem.walk.start] at @s run function zombie:skill/chaos/chaos_golem/skill/walk/start/tick
execute if entity @s[tag=skill.chaosgolem.walk.loop] at @s run function zombie:skill/chaos/chaos_golem/skill/walk/loop/tick
execute if entity @s[tag=skill.chaosgolem.walk.end] at @s run function zombie:skill/chaos/chaos_golem/skill/walk/end/tick

execute if entity @s[tag=skill.chaosgolem.attack0] at @s run function zombie:skill/chaos/chaos_golem/skill/attack/tick
execute if entity @s[tag=skill.chaosgolem.hitground0] at @s run function zombie:skill/chaos/chaos_golem/skill/hit_ground/tick
execute if entity @s[tag=skill.chaosgolem.shoot0] at @s run function zombie:skill/chaos/chaos_golem/skill/shoot/tick




execute if score @s zombie.chaos.chaos_golem.skill_cooldowntimer matches 1.. run scoreboard players remove @s zombie.chaos.chaos_golem.skill_cooldowntimer 1

scoreboard players reset match zombie.number
tag @e[type=slime] remove target
tag @e[type=item_display] remove target

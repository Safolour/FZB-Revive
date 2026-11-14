scoreboard players add @s zombie.skill_timer 1
execute if entity @s[tag=skill.firelord.big] at @s run function zombie:skill/nether/firelord/fire/big_step
execute unless entity @s[tag=skill.firelord.big] at @s run function zombie:skill/nether/firelord/fire/step
execute unless entity @s[tag=skill.firelord.big] at @s run function zombie:skill/nether/firelord/fire/step
execute unless entity @s[tag=skill.firelord.big] at @s run function zombie:skill/nether/firelord/fire/step
execute if entity @s[tag=skill.firelord.big] at @s run function zombie:skill/nether/firelord/fire/big_ring
execute if entity @s[tag=skill.firelord.big] at @s run particle flame ~ ~ ~ 0 0 0 0.03 2 force @a[scores={particle=0}]
execute if entity @s[tag=skill.firelord.big] at @s run particle flame ~ ~ ~ 0 0 0 0.03 1 force @a[scores={particle=1}]
execute at @s run particle large_smoke ~ ~ ~ 0 0 0 0.01 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run execute at @s run particle large_smoke ~ ~ ~ 0 0 0 0.01 1 force @a[scores={particle=1}]
execute if entity @s[tag=!skill.firelord.big] if score @s zombie.skill_timer matches 30.. run function zombie:skill/nether/firelord/fire/remove
execute if entity @s[tag=skill.firelord.big] if score @s zombie.skill_timer matches 80.. run function zombie:skill/nether/firelord/fire/remove

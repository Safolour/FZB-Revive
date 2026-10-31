function zombie:skill/nether/guardian/warped/2/skill/rotation/tick

execute if entity @s[tag=skill.warpedguardian.floatup] run function zombie:skill/nether/guardian/warped/2/skill/floatup/tick

execute if entity @s[tag=skill.warpedguardian.move] run function zombie:skill/nether/guardian/warped/2/skill/move/tick

execute if entity @s[tag=skill.warpedguardian.attract] run function zombie:skill/nether/guardian/warped/2/skill/attract/tick

execute if entity @s[tag=skill.warpedguardian.eclipse] run function zombie:skill/nether/guardian/warped/2/skill/eclipse/tick

execute if entity @s[tag=skill.warpedguardian.labyrinth] run function zombie:skill/nether/guardian/warped/2/skill/labyrinth/tick

execute if entity @s[tag=skill.warpedguardian.floatdown] run function zombie:skill/nether/guardian/warped/2/skill/floatdown/tick

execute if entity @s[tag=skill.warpedguardian.laser] run function zombie:skill/nether/guardian/warped/2/skill/laser/tick

execute if entity @s[tag=skill.warpedguardian.interplay] at @s run function zombie:skill/nether/guardian/warped/0/skill/interplay/tick

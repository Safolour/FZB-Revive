function zombie:skill/nether/guardian/crimson/0/skill/rotation/tick

execute if entity @s[tag=skill.crimsonguardian.floatup] run function zombie:skill/nether/guardian/crimson/4/skill/floatup/tick

execute if entity @s[tag=skill.crimsonguardian.move] at @s run function zombie:skill/nether/guardian/crimson/4/skill/move/tick

execute if entity @s[tag=skill.crimsonguardian.shockwave] at @s run function zombie:skill/nether/guardian/crimson/4/skill/shockwave/tick

execute if entity @s[tag=skill.crimsonguardian.missile] at @s run function zombie:skill/nether/guardian/crimson/4/skill/missile/tick

execute if entity @s[tag=skill.crimsonguardian.laser] at @s run function zombie:skill/nether/guardian/crimson/4/skill/laser/tick

execute if entity @s[tag=skill.crimsonguardian.floatdown] at @s run function zombie:skill/nether/guardian/crimson/4/skill/floatdown/tick

execute if entity @s[tag=skill.crimsonguardian.interplay] run function zombie:skill/nether/guardian/crimson/0/skill/interplay/tick

function zombie:skill/nether/guardian/crimson/4/plan/tick

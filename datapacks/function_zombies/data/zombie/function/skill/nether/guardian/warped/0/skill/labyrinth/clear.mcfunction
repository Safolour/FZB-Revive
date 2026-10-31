
kill @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.0]
kill @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.1]
execute as @e[type=slime,tag=skill.warpedguardian.labyrinth.0] run tp @s 0 0 0
execute as @e[type=slime,tag=skill.warpedguardian.labyrinth.0] run kill @s
kill @e[type=armor_stand,tag=skill.warpedguardian.labyrinth.1]
schedule clear zombie:skill/nether/guardian/warped/0/skill/labyrinth/tellraw0
kill @e[type=marker,tag=skill.warpedguardian.labyrinth.impact]

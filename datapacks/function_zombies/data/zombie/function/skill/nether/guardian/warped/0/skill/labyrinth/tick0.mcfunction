
scoreboard players add @s zombie.nether.guardian.labyrinth 1

scoreboard players operation match zombie.nether.guardian.labyrinth.match = @s zombie.nether.guardian.labyrinth.match
execute as @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.1] if score @s zombie.nether.guardian.labyrinth.match = match zombie.nether.guardian.labyrinth.match run tag @s add target

execute unless entity @s[tag=skill.warpedguardian.labyrinth.spawn.0.negative] run tp @s ^0.3 ^0.015 ^0.15 facing entity @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.1,tag=target,limit=1]
execute if entity @s[tag=skill.warpedguardian.labyrinth.spawn.0.negative] run tp @s ^-0.3 ^0.015 ^0.15 facing entity @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.1,tag=target,limit=1]

execute if entity @e[type=marker,distance=..2,tag=target] run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/spawn0

tag @e[type=marker,tag=target] remove target
scoreboard players reset match zombie.nether.guardian.labyrinth.match

particle end_rod ^ ^ ^0.0 0 0 0 0 1 force @a[scores={particle=0..1}]
execute if entity @s[tag=skill.warpedguardian.labyrinth.spawn.0.negative] run particle end_rod ^0.1 ^0.005 ^-0.05 0 0 0 0 1 force @a[scores={particle=0}]
execute if entity @s[tag=skill.warpedguardian.labyrinth.spawn.0.negative] run particle end_rod ^0.2 ^0.01 ^-0.1 0 0 0 0 1 force @a[scores={particle=0}]
execute unless entity @s[tag=skill.warpedguardian.labyrinth.spawn.0.negative] run particle end_rod ^-0.1 ^0.005 ^-0.05 0 0 0 0 1 force @a[scores={particle=0}]
execute unless entity @s[tag=skill.warpedguardian.labyrinth.spawn.0.negative] run particle end_rod ^-0.2 ^0.001 ^-0.1 0 0 0 0 1 force @a[scores={particle=0}]

execute if score @s zombie.nether.guardian.labyrinth matches 300.. run kill @s

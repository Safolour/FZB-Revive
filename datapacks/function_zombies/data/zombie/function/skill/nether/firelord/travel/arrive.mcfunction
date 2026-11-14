# Recheck initial landing: fire or another obstruction may have appeared during the flight.
execute if entity @s[tag=firelord.travel.intro] at @e[type=marker,tag=firelord.travel.target,limit=1] unless block ~ ~-1 ~ air run return run function zombie:skill/nether/firelord/travel/retry
execute if entity @s[tag=firelord.travel.intro] at @e[type=marker,tag=firelord.travel.target,limit=1] unless block ~ ~ ~ air run return run function zombie:skill/nether/firelord/travel/retry
particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0.08 15 force @a[scores={particle=0}]
particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0.08 7 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0.08 1 force @a[scores={particle=1}]
playsound entity.blaze.teleport hostile @a[scores={system.room=4..}] ~ ~ ~ 2 1
execute if entity @s[tag=firelord.travel.intro] at @e[type=marker,tag=firelord.travel.target,limit=1] positioned ~ ~-1 ~ run function zombie:zombie/nether/firelord/0
execute if entity @s[tag=firelord.travel.normal] at @e[type=marker,tag=firelord.travel.target,limit=1] as @e[type=zombie,tag=firelord.traveling,limit=1] run tp @s ~ ~-1 ~
execute if entity @s[tag=firelord.travel.normal] as @e[type=zombie,tag=firelord.traveling,limit=1] at @s run function zombie:skill/nether/firelord/travel/restore
execute if entity @s[tag=firelord.travel.return] as @e[type=zombie,tag=firelord.returning,limit=1] run tp @s 300.5 100 131.5
# The traveling marker can stop short of the destination; emit at the boss's body.
execute if entity @s[tag=firelord.travel.intro] at @e[type=marker,tag=firelord.travel.target,limit=1] run particle flame ~ ~ ~ 0.3 0.3 0.3 0.1 15 force @a[scores={particle=0}]
execute if entity @s[tag=firelord.travel.intro] at @e[type=marker,tag=firelord.travel.target,limit=1] run particle flame ~ ~ ~ 0.3 0.3 0.3 0.1 7 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run execute if entity @s[tag=firelord.travel.intro] at @e[type=marker,tag=firelord.travel.target,limit=1] run particle flame ~ ~ ~ 0.3 0.3 0.3 0.1 1 force @a[scores={particle=1}]
execute if entity @s[tag=firelord.travel.normal] at @e[type=marker,tag=firelord.travel.target,limit=1] run particle flame ~ ~ ~ 0.3 0.3 0.3 0.1 15 force @a[scores={particle=0}]
execute if entity @s[tag=firelord.travel.normal] at @e[type=marker,tag=firelord.travel.target,limit=1] run particle flame ~ ~ ~ 0.3 0.3 0.3 0.1 7 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run execute if entity @s[tag=firelord.travel.normal] at @e[type=marker,tag=firelord.travel.target,limit=1] run particle flame ~ ~ ~ 0.3 0.3 0.3 0.1 1 force @a[scores={particle=1}]
execute if entity @s[tag=firelord.travel.return] positioned 300.5 101 131.5 run particle flame ~ ~ ~ 0.3 0.3 0.3 0.1 15 force @a[scores={particle=0}]
execute if entity @s[tag=firelord.travel.return] positioned 300.5 101 131.5 run particle flame ~ ~ ~ 0.3 0.3 0.3 0.1 7 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run execute if entity @s[tag=firelord.travel.return] positioned 300.5 101 131.5 run particle flame ~ ~ ~ 0.3 0.3 0.3 0.1 1 force @a[scores={particle=1}]
execute if entity @s[tag=firelord.travel.return] run tag @e[type=zombie,tag=firelord.returning,limit=1] add hitable
execute if entity @s[tag=firelord.travel.return] run tag @e[type=zombie,tag=firelord.returning,limit=1] remove firelord.returning
execute if entity @s[tag=firelord.travel.return] positioned 300.5 100 131.5 run particle end_rod ~ ~1 ~ 0 0 0 0.3 100 force @a[scores={particle=0}]
execute if entity @s[tag=firelord.travel.return] positioned 300.5 100 131.5 run particle end_rod ~ ~1 ~ 0 0 0 0.3 50 force @a[scores={particle=1}]
execute if entity @s[tag=firelord.travel.return] positioned 300.5 100 131.5 run playsound entity.illusioner.prepare_mirror record @a ~ ~ ~ 10 2
execute if entity @s[tag=firelord.travel.return] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.4"}
execute if entity @s[tag=firelord.travel.return] as @e[type=zombie,tag=skill.firelord.shield,tag=!firelord.p4,limit=1] run function zombie:skill/nether/firelord/p2/start
execute if entity @s[tag=firelord.travel.return] as @e[type=zombie,tag=skill.firelord.shield,tag=firelord.p4,limit=1] at @s run function zombie:skill/nether/firelord/p4/enter
kill @e[type=marker,tag=firelord.travel.target]
tag @e[type=block_display,tag=firelord.travel.flame0] add mob.skill
tag @e[type=block_display,tag=firelord.travel.flame0] add skill.firelord.travel_flame
tag @e[type=block_display,tag=firelord.travel.flame0] remove firelord.travel.flame0
tag @e[type=block_display,tag=firelord.travel.flame1] add mob.skill
tag @e[type=block_display,tag=firelord.travel.flame1] add skill.firelord.travel_flame
tag @e[type=block_display,tag=firelord.travel.flame1] remove firelord.travel.flame1
tag @e[type=block_display,tag=firelord.travel.flame2] add mob.skill
tag @e[type=block_display,tag=firelord.travel.flame2] add skill.firelord.travel_flame
tag @e[type=block_display,tag=firelord.travel.flame2] remove firelord.travel.flame2
kill @e[type=marker,tag=firelord.travel.heading]
kill @s

execute if score stat zombie.nether.guardian matches 0 run return 0
execute if score stat zombie.nether.guardian matches 2 run return 0
execute if score stat zombie.nether.guardian matches 4 run return 0
execute if score stat zombie.nether.guardian matches 6 run return 0
execute if score stat zombie.nether.guardian matches 8 run return 0

scoreboard players add cooldown zombie.nether.lava.particle 1

execute if score cooldown zombie.nether.lava.particle matches ..20 run return 0
scoreboard players set cooldown zombie.nether.lava.particle 0

execute if score stat zombie.nether.guardian matches 1 run function zombie:skill/nether/guardian/floor/0/platform/spawn
execute if score stat zombie.nether.guardian matches 3 run function zombie:skill/nether/guardian/floor/0/platform/spawn2
execute if score stat zombie.nether.guardian matches 5 run function zombie:skill/nether/guardian/floor/0/platform/spawn4
execute if score stat zombie.nether.guardian matches 7 run function zombie:skill/nether/guardian/floor/0/platform/spawn2
execute if score stat zombie.nether.guardian matches 9 run function zombie:skill/nether/guardian/floor/0/platform/spawn

tag @e[type=marker,tag=skill.guardian.floor.platform.0,sort=random,limit=1] add target

execute as @e[type=marker,tag=target] at @s run function zombie:skill/nether/guardian/floor/lava/particle/spawn

tag @e[type=marker,tag=target] remove target
kill @e[type=marker,tag=skill.guardian,tag=skill.guardian.floor.platform.0]

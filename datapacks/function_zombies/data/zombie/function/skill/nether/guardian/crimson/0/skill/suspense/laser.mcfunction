execute if score @s zombie.nether.guardian.suspense.laser matches ..80 run return 0
scoreboard players set @s zombie.nether.guardian.suspense.laser 0
tp @s ~ ~ ~ facing entity @a[tag=target,limit=1]

playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 1.5 2
playsound entity.guardian.ambient_land record @a ~ ~ ~ 1.5 1
execute unless score round game.state matches 40 run particle flame ^ ^0.5 ^1 0 0 0 0.1 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ^ ^0.5 ^1 0 0 0 0.1 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ^ ^0.5 ^1 0 0 0 0.1 10 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle flash ^ ^0.5 ^1 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ^ ^0.5 ^1 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ^ ^0.5 ^1 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle end_rod ^ ^0.5 ^1 0 0 0 0.1 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ^ ^0.5 ^1 0 0 0 0.1 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ^ ^0.5 ^1 0 0 0 0.1 10 force @a[scores={particle=1}]

scoreboard players set loop zombie.nether.guardian.suspense.laser 0
summon marker ~ ~ ~ {Tags:["mob.skill","skill.crimsonguardian.suspense.laser"]}
tp @n[type=marker,tag=skill.crimsonguardian.suspense.laser] ~ ~0.5 ~ facing entity @a[tag=target,limit=1] eyes

execute as @n[type=marker,tag=skill.crimsonguardian.suspense.laser] at @s run function zombie:skill/nether/guardian/crimson/0/skill/suspense/loop
kill @n[type=marker,tag=skill.crimsonguardian.suspense.laser]
scoreboard players reset loop zombie.nether.guardian.suspense.laser

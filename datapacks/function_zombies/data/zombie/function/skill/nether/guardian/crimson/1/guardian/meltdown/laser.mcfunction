tp @s ~ ~ ~ facing entity @e[type=marker,tag=skill.guardian.floor.platform.marker.clear,tag=target,limit=1]
function zombie:skill/nether/guardian/crimson/1/guardian/meltdown/rotation

playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 1.5 2

particle flash ^ ^0.3 ^1 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ^ ^0.3 ^1 0 0 0 0 1 force @a[scores={particle=0}]
particle flame ^ ^0.3 ^1 0 0 0 0.1 5 force @a[scores={particle=0}]
particle end_rod ^ ^0.3 ^1 0 0 0 0.1 5 force @a[scores={particle=0}]

scoreboard players set loop zombie.nether.guardian.suspense.laser 0

summon marker ~ ~ ~ {Tags:["mob.skill","skill.crimsonguardian.meltdown.laser"]}
execute as @n[type=marker,tag=skill.crimsonguardian.meltdown.laser] at @s run tp @s ~ ~-1 ~ facing entity @e[type=marker,tag=skill.guardian.floor.platform.marker.clear,tag=target,limit=1]
execute as @n[type=marker,tag=skill.crimsonguardian.meltdown.laser] at @s run tp @s ~ ~1.5 ~ ~ ~
execute as @n[type=marker,tag=skill.crimsonguardian.meltdown.laser] at @s run function zombie:skill/nether/guardian/crimson/1/guardian/meltdown/loop
kill @e[type=marker,tag=skill.crimsonguardian.meltdown.laser]

scoreboard players reset loop zombie.nether.guardian.suspense.laser

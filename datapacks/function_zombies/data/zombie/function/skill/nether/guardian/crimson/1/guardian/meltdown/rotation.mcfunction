execute store result storage zombie crimsonguardiansuspense1.rotation.0 float 1 run data get entity @s Rotation[0]
execute store result storage zombie crimsonguardiansuspense1.rotation.1 float 1 run data get entity @s Rotation[1]

execute on passengers run function zombie:skill/nether/guardian/crimson/1/guardian/meltdown/rotation0 with storage zombie crimsonguardiansuspense1.rotation

data remove storage zombie crimsonguardiansuspense1

scoreboard players operation angel zombie.nether.guardian = crimsonguardianrotation zombie.nether.guardian
scoreboard players set 90 zombie.nether.guardian 90

scoreboard players operation left zombie.nether.guardian = angel zombie.nether.guardian
scoreboard players operation right zombie.nether.guardian = angel zombie.nether.guardian

scoreboard players operation left zombie.nether.guardian += 90 zombie.nether.guardian
scoreboard players operation right zombie.nether.guardian -= 90 zombie.nether.guardian

scoreboard players reset 90 zombie.nether.guardian
scoreboard players reset angel zombie.nether.guardian

execute store result storage zombie crimsonguardianparticle.left int 1 run scoreboard players get left zombie.nether.guardian
execute store result storage zombie crimsonguardianparticle.right int 1 run scoreboard players get right zombie.nether.guardian
function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/get with storage zombie crimsonguardianparticle

data remove storage zombie crimsonguardianparticle
scoreboard players reset left zombie.nether.guardian
scoreboard players reset right zombie.nether.guardian

execute store result storage zombie crimsonguardianparticle.left0 float 0.01 run scoreboard players get left_x zombie.nether.guardian
execute store result storage zombie crimsonguardianparticle.left1 float 0.01 run scoreboard players get left_z zombie.nether.guardian
execute store result storage zombie crimsonguardianparticle.right0 float 0.01 run scoreboard players get right_x zombie.nether.guardian
execute store result storage zombie crimsonguardianparticle.right1 float 0.01 run scoreboard players get right_z zombie.nether.guardian

execute positioned ^ ^ ^ run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/particle with storage zombie crimsonguardianparticle
execute positioned ^ ^ ^-2 run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/particle with storage zombie crimsonguardianparticle

data remove storage zombie crimsonguardianparticle

scoreboard players reset left_x zombie.nether.guardian
scoreboard players reset left_z zombie.nether.guardian
scoreboard players reset right_x zombie.nether.guardian
scoreboard players reset right_z zombie.nether.guardian

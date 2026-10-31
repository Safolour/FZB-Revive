scoreboard players operation angel zombie.nether.guardian = warpedguardianrotation zombie.nether.guardian
scoreboard players set 90 zombie.nether.guardian 90

scoreboard players operation left zombie.nether.guardian = angel zombie.nether.guardian
scoreboard players operation right zombie.nether.guardian = angel zombie.nether.guardian

scoreboard players operation left zombie.nether.guardian += 90 zombie.nether.guardian
scoreboard players operation right zombie.nether.guardian -= 90 zombie.nether.guardian

scoreboard players reset 90 zombie.nether.guardian
scoreboard players reset angel zombie.nether.guardian

execute store result storage zombie warpedguardianparticle.left int 1 run scoreboard players get left zombie.nether.guardian
execute store result storage zombie warpedguardianparticle.right int 1 run scoreboard players get right zombie.nether.guardian
function zombie:skill/nether/guardian/warped/0/skill/move/swim/particle/get with storage zombie warpedguardianparticle

data remove storage zombie warpedguardianparticle
scoreboard players reset left zombie.nether.guardian
scoreboard players reset right zombie.nether.guardian

execute store result storage zombie warpedguardianparticle.left0 float 0.01 run scoreboard players get left_x zombie.nether.guardian
execute store result storage zombie warpedguardianparticle.left1 float 0.01 run scoreboard players get left_z zombie.nether.guardian
execute store result storage zombie warpedguardianparticle.right0 float 0.01 run scoreboard players get right_x zombie.nether.guardian
execute store result storage zombie warpedguardianparticle.right1 float 0.01 run scoreboard players get right_z zombie.nether.guardian

execute positioned ^ ^ ^ run function zombie:skill/nether/guardian/warped/0/skill/move/swim/particle/particle with storage zombie warpedguardianparticle
execute positioned ^ ^ ^-2 run function zombie:skill/nether/guardian/warped/0/skill/move/swim/particle/particle with storage zombie warpedguardianparticle

data remove storage zombie warpedguardianparticle

scoreboard players reset left_x zombie.nether.guardian
scoreboard players reset left_z zombie.nether.guardian
scoreboard players reset right_x zombie.nether.guardian
scoreboard players reset right_z zombie.nether.guardian

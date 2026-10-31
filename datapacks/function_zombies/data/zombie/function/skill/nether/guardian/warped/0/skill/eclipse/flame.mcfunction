
execute unless entity @a[scores={stat.player=1},distance=..10] run return 0

execute store result storage zombie warpedguardianeclipseflame.x float 0.1 run random value -5..5
execute store result storage zombie warpedguardianeclipseflame.y float 0.1 run random value -10..10
execute store result storage zombie warpedguardianeclipseflame.z float 0.1 run random value -5..5
execute store result storage zombie warpedguardianeclipseflame.m float 0.1 run random value -30..30
execute store result storage zombie warpedguardianeclipseflame.n float 0.1 run random value -30..30

function zombie:skill/nether/guardian/warped/0/skill/eclipse/flame1 with storage zombie warpedguardianeclipseflame

data remove storage zombie warpedguardianeclipseflame

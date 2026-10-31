execute store result storage zombie random.x float 0.1 run random value -50..50
execute store result storage zombie random.y float 0.1 run random value 0..50
execute store result storage zombie random.z float 0.1 run random value -50..50

execute store result storage zombie random.a float -1 run data get storage zombie random.x
execute store result storage zombie random.b float -1 run data get storage zombie random.y
execute store result storage zombie random.c float -1 run data get storage zombie random.z

function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/gather/1 with storage zombie random

data remove storage zombie random

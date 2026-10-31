#function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/circle/init {name:"end_rod",speed:0.3}

execute store result storage zombie particle.horizontal int 1.0 run random value -180..180
execute store result storage zombie particle.vertical int 1.0 run random value -90..90

#$data modify storage zombie particle.horizontal set value $(horizontal)
#$data modify storage zombie particle.vertical set value $(vertical)

$data modify storage zombie particle.name set value $(name)
$data modify storage zombie particle.speed set value $(speed)

function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/circle/0 with storage zombie particle

data remove storage zombie particle
scoreboard players reset count zombie.number

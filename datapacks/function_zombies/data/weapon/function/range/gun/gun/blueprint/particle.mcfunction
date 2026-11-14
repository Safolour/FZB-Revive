$execute if score range weapon.range matches 0..9 run particle $(particle) ~ ~ ~ 0 0 0 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
$execute if score range weapon.range matches 10.. run particle $(particle) ~ ~ ~ 0 0 0 0 1 force @a[scores={gun.particle=0}]

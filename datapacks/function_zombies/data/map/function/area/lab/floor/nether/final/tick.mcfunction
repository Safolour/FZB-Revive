
execute as @a at @s run function map:area/lab/floor/nether/final/tick0

particle white_ash 300 92 150 15 5 20 0.02 30 force @a[scores={particle=0}]
particle white_ash 300 92 150 15 5 20 0.02 15 force @a[scores={particle=1}]
particle soul 300 92 150 15 5 20 0.02 3 force @a[scores={particle=0}]
particle soul 300 92 150 15 5 20 0.02 1 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run particle soul 300 92 150 15 5 20 0.02 1 force @a[scores={particle=1}]

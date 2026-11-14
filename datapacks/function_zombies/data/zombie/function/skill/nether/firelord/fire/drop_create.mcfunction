particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle flame ~ ~ ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
particle flame ~ ~ ~ 0 0 0 0.1 10 force @a[scores={particle=1}]
function zombie:skill/nether/firelord/fire/create

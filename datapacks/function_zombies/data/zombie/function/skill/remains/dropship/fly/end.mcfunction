particle end_rod ~ ~ ~ 0 0 0 0.4 100 force @a[scores={particle=0}]
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~ ~ 0 0 0 3 3 force @a[scores={particle=0}]

playsound item.trident.return record @a ~ ~ ~ 2 1

function system:death

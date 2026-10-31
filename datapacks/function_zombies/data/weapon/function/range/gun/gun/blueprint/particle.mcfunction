$execute if score range weapon.range matches 0..9 run particle $(particle) ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
$execute if score range weapon.range matches 10.. run particle $(particle) ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]

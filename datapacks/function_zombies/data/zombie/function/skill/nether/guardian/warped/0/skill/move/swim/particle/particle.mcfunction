$execute unless score round game.state matches 40 run particle flame ~ ~0.7 ~ $(left0) 0.0 $(left1) 0.02 0 force @a[scores={particle=0}]
$execute if score round game.state matches 40 run particle flame ~ ~0.7 ~ $(left0) 0.0 $(left1) 0.02 0 force @a[scores={particle=0}]
$execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flame ~ ~0.7 ~ $(left0) 0.0 $(left1) 0.02 0 force @a[scores={particle=1}]
$execute unless score round game.state matches 40 run particle flame ~ ~0.7 ~ $(right0) 0.0 $(right1) 0.02 0 force @a[scores={particle=0}]
$execute if score round game.state matches 40 run particle flame ~ ~0.7 ~ $(right0) 0.0 $(right1) 0.02 0 force @a[scores={particle=0}]
$execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flame ~ ~0.7 ~ $(right0) 0.0 $(right1) 0.02 0 force @a[scores={particle=1}]

#$say $(left0) $(left1) $(right0) $(right1)

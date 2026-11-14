
playsound entity.elder_guardian.curse record @s ~ ~ ~ 10 1

execute unless score round game.state matches 40 run particle elder_guardian ~ ~ ~ ~ ~ ~ 0 1 force @s[scores={particle=0..2}]
execute if score round game.state matches 40 run particle elder_guardian ~ ~ ~ ~ ~ ~ 0 1 force @s[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle elder_guardian ~ ~ ~ ~ ~ ~ 0 1 force @s[scores={particle=1}]

effect give @s slowness 10 0 false

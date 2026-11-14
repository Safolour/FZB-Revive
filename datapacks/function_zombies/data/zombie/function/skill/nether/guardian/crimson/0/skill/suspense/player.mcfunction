
effect give @s instant_health 1 0 true

execute unless score round game.state matches 40 run particle heart ~ ~1 ~ 0.3 0.3 0.3 0 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle heart ~ ~1 ~ 0.3 0.3 0.3 0 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle heart ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle heart ~ ~1 ~ 0.3 0.3 0.3 0 1 force @a[scores={particle=1}]

playsound entity.player.levelup record @s ~ ~ ~ 2 2

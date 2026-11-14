
effect give @s instant_health 1 1 true

execute unless score round game.state matches 40 run execute at @s run particle heart ~ ~1 ~ 0.1 0.1 0.1 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle heart ~ ~1 ~ 0.1 0.1 0.1 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle heart ~ ~1 ~ 0.1 0.1 0.1 0 1 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run execute at @s run particle heart ~ ~1 ~ 0.1 0.1 0.1 0 1 force @a[scores={particle=1}]
execute at @s run playsound entity.player.levelup ambient @a ~ ~ ~ 1 2


effect give @s slowness 3 1 false
scoreboard players remove @s zombie.health 3

execute unless score round game.state matches 40 run execute at @s run particle damage_indicator ~ ~1 ~ 0.1 0.1 0.1 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle damage_indicator ~ ~1 ~ 0.1 0.1 0.1 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle damage_indicator ~ ~1 ~ 0.1 0.1 0.1 0 1 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run execute at @s run particle damage_indicator ~ ~1 ~ 0.1 0.1 0.1 0 1 force @a[scores={particle=1}]
execute at @s run playsound entity.player.hurt ambient @a

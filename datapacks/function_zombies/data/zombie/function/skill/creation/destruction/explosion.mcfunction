particle explosion ~ ~1 ~ 0 0 0 3 5 force @a[scores={particle=0}]
particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle firework ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
particle lava ~ ~1 ~ 0 0 0 0 5 force @a[scores={particle=0}]
particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
particle campfire_signal_smoke ~ ~1 ~ 0 0 0 0.05 10 force @a[scores={particle=0}]
playsound entity.generic.explode record @a ~ ~ ~ 2 1

function system:death

execute if entity @a[scores={stat.player=1},distance=..4] as @a[scores={stat.player=1},distance=..4] at @s run function zombie:skill/creation/destruction/damage

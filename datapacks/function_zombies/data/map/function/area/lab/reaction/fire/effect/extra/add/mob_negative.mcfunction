
effect give @s strength 3 1 false

execute at @s run playsound entity.wolf.growl ambient @a
execute unless score round game.state matches 40 run execute at @s run particle angry_villager ~ ~1 ~ 0.1 0.1 0.1 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle angry_villager ~ ~1 ~ 0.1 0.1 0.1 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle angry_villager ~ ~1 ~ 0.1 0.1 0.1 0 1 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run execute at @s run particle angry_villager ~ ~1 ~ 0.1 0.1 0.1 0 1 force @a[scores={particle=1}]

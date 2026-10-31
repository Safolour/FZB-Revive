
effect give @s strength 3 1 false

execute at @s run playsound entity.wolf.growl ambient @a
execute at @s run particle angry_villager ~ ~1 ~ 0.1 0.1 0.1 0 3 force @a[scores={particle=0}]

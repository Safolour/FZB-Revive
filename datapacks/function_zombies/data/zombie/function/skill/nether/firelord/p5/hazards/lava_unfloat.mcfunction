# A fan grants levitation VIII; leave it alone and retry once it has expired.
effect clear @s minecraft:slow_falling
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:levitation":{amplifier:{min:6}}}}} run return 0
effect clear @s minecraft:levitation
tag @s remove p5.lava_float

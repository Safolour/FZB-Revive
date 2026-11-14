# Only touching the visible boss consumes a flame; while he travels, follow his moving travel marker.
execute unless entity @e[type=zombie,tag=skill.firelord] unless entity @e[type=marker,tag=skill.firelord.travel] run return run kill @s
execute positioned ~ ~-1 ~ if entity @e[type=zombie,tag=skill.firelord,tag=!firelord.traveling,tag=!firelord.returning,distance=..1.4] run return run kill @s
particle small_flame ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle small_flame ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle smoke ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle smoke ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute if entity @e[type=zombie,tag=skill.firelord,tag=!firelord.traveling,tag=!firelord.returning] facing entity @e[type=zombie,tag=skill.firelord,tag=!firelord.traveling,tag=!firelord.returning,sort=nearest,limit=1] eyes run tp @s ^ ^ ^0.4
execute unless entity @e[type=zombie,tag=skill.firelord,tag=!firelord.traveling,tag=!firelord.returning] if entity @e[type=marker,tag=skill.firelord.travel] facing entity @e[type=marker,tag=skill.firelord.travel,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.4

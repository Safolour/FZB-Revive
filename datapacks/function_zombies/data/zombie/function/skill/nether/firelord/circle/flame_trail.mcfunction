execute if entity @s[tag=firelord.circle.crimson] run particle flame ~ ~0.25 ~ 0 0 0 0.1 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run execute if entity @s[tag=firelord.circle.crimson] run particle flame ~ ~0.25 ~ 0 0 0 0.1 1 force @a[scores={particle=1}]
execute if entity @s[tag=firelord.circle.warped] run particle soul_fire_flame ~ ~0.25 ~ 0 0 0 0.1 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run execute if entity @s[tag=firelord.circle.warped] run particle soul_fire_flame ~ ~0.25 ~ 0 0 0 0.1 1 force @a[scores={particle=1}]

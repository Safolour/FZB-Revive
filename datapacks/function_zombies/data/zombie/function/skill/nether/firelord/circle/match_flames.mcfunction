# Provisional splash: exact packet parameters not present in the checked success recording.
execute if entity @s[tag=firelord.circle.crimson] run particle flame ~ ~0.25 ~ 0 0 0 0.3 20 force @a[scores={particle=0}]
execute if entity @s[tag=firelord.circle.crimson] run particle flame ~ ~0.25 ~ 0 0 0 0.3 10 force @a[scores={particle=1}]
execute if entity @s[tag=firelord.circle.warped] run particle soul_fire_flame ~ ~0.25 ~ 0 0 0 0.3 20 force @a[scores={particle=0}]
execute if entity @s[tag=firelord.circle.warped] run particle soul_fire_flame ~ ~0.25 ~ 0 0 0 0.3 10 force @a[scores={particle=1}]

execute positioned ~ ~1 ~ run summon marker ~ ~ ~ {Tags:["firelord.travel.heading"]}
execute positioned ~ ~1 ~ run tp @e[type=marker,tag=firelord.travel.heading,limit=1,sort=nearest] ~ ~ ~ ~ ~
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
tag @s add firelord.traveling
tag @s remove hitable
data merge entity @s {NoAI:1b,Invulnerable:1b}
particle flame ~ ~1 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=1}]
particle large_smoke ~ ~1 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
particle large_smoke ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=1}]
particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute positioned ~ ~1 ~ run summon marker ~ ~ ~ {Tags:["mob.skill","skill.firelord.travel","firelord.travel.normal"]}
tp @s ~ ~10000 ~

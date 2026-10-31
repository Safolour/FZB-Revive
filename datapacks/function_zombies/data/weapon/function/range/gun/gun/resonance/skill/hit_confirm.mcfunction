tag @s add res_skill_seen
execute unless entity @s[tag=res_skill_damaged] run function weapon:range/gun/gun/resonance/skill/propagate
# Visual continuation may visit already damaged members of the same kind.
# Damage propagation itself has no distance, count or ten-target limit.
execute as @e[type=marker,tag=res_skill_ray,limit=1] at @s if entity @e[tag=hitable,tag=!res_skill_seen,scores={zombie.health=1..},distance=..30] run tp @s ~ ~ ~ facing entity @e[tag=hitable,tag=!res_skill_seen,scores={zombie.health=1..},distance=..30,sort=nearest,limit=1] eyes

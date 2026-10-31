# One synchronous ray per caster; restore shooter attribution after every pulse.
scoreboard players operation @s weapon.res_prev = @s weapon.use
scoreboard players operation @s weapon.use = uuid weapon.gun_resonance
tag @s add res_skill_owner
scoreboard players set #hit_counted weapon.state 0
scoreboard players set #head_counted weapon.state 0
scoreboard players operation gun weapon.use = uuid weapon.gun_resonance
execute anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["res_skill_ray"]}
execute as @e[type=marker,tag=res_skill_ray,limit=1] at @s rotated as @p[tag=res_skill_owner] run function weapon:range/gun/gun/resonance/skill/ray_start
kill @e[type=marker,tag=res_skill_ray]
tag @e[tag=res_skill_seen] remove res_skill_seen
tag @e[tag=res_skill_damaged] remove res_skill_damaged
tag @s remove res_skill_owner
scoreboard players operation @s weapon.use = @s weapon.res_prev

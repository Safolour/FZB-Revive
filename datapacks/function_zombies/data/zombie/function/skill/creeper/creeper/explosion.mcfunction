scoreboard players operation match zombie.creeper.match = @s zombie.creeper.match
execute as @e[type=creeper,tag=skill.creeper] if score @s zombie.creeper.match = match zombie.creeper.match run tag @s add target
execute as @n[type=creeper,tag=target] run function zombie:death
scoreboard players reset match zombie.creeper.match

function system:death
#particle explosion_emitter ~ ~1 ~
particle flame ~ ~1 ~ 0 0 0 0.2 20 force @a[scores={particle=0}]
particle large_smoke ~ ~1 ~ 0 0 0 0.2 20 force @a[scores={particle=0}]
particle white_smoke ~ ~1 ~ 0 0 0 0.2 20 force @a[scores={particle=0}]
particle explosion ~ ~1 ~ 0 0 0 1 1 force @a[scores={particle=0..1}]
execute if entity @s[tag=skill.creeper.lightning] run summon lightning_bolt
execute if entity @s[tag=skill.creeper.lightning] run particle explosion ~ ~1 ~ 0 0 0 3 3 force @a[scores={particle=0..1}]

playsound entity.generic.explode record @a ~ ~ ~ 1.5 1

summon marker ~ ~ ~ {Tags:["mob.skill","skill.creeper.motion"]}
execute if entity @s[tag=!skill.creeper.lightning] if entity @a[scores={stat.player=1},distance=..3] as @a[scores={stat.player=1},distance=..3] at @s run function zombie:skill/creeper/creeper/damage
execute if entity @s[tag=skill.creeper.lightning] if entity @a[scores={stat.player=1},distance=..5] as @a[scores={stat.player=1},distance=..5] at @s run function zombie:skill/creeper/lightning/damage
execute if entity @s[tag=!skill.creeper.lightning] if entity @e[tag=mob,tag=creepermotion,distance=..3] as @e[tag=mob,tag=creepermotion,distance=..3] at @s run function zombie:skill/creeper/creeper/motionmob
execute if entity @s[tag=skill.creeper.lightning] if entity @e[tag=mob,tag=creepermotion,distance=..5] as @e[tag=mob,tag=creepermotion,distance=..5] at @s run function zombie:skill/creeper/creeper/motionmob
execute if entity @s[tag=!skill.creeper.lightning] if entity @e[tag=mob,tag=creeperdamage,distance=..3] as @e[tag=mob,tag=creeperdamage,distance=..3] at @s run function zombie:skill/creeper/creeper/damagemob
execute if entity @s[tag=skill.creeper.lightning] if entity @e[tag=mob,tag=creeperdamage,distance=..5] as @e[tag=mob,tag=creeperdamage,distance=..5] at @s run function zombie:skill/creeper/lightning/damagemob
kill @e[type=marker,tag=skill.creeper.motion]

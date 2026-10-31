execute as @e[type=blaze,tag=skill.blaze] at @s run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute as @e[type=blaze,tag=skill.blaze] at @s run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute as @e[type=blaze,tag=skill.blaze] at @s run particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]

execute as @e[type=blaze,tag=skill.blaze] at @s run playsound entity.blaze.hurt record @a ~ ~ ~ 1.5 1

execute as @e[type=blaze,tag=skill.blaze] at @s run function system:death

kill @e[type=marker,tag=skill.blaze.spawn]


summon marker ~ ~ ~ {Tags:["mob.skill","skill.creation.collapse.laser1","chosen"]}
tp @n[type=marker,tag=chosen] ~ ~ ~ ~ ~
scoreboard players set loop zombie.creation.collapse 0
execute as @n[type=marker,tag=chosen] at @s run function zombie:skill/creation/collapse/loop0
scoreboard players reset loop zombie.creation.collapse
kill @n[type=marker,tag=chosen]
kill @s

playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 10 2

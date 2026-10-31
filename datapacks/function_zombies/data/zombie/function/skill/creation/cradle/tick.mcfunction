
execute on target if entity @s[type=player,scores={stat.player=1},distance=..10,gamemode=adventure] run tag @s add target
execute unless entity @a[tag=target] run return fail

scoreboard players add @s zombie.creation.cradle 1
execute if entity @a[tag=target,distance=..3] run effect give @s slowness 1 255 true
execute if score @s zombie.creation.cradle matches ..50 run return run tag @a[tag=target] remove target

scoreboard players set @s zombie.creation.cradle 0
effect give @s slowness 2 1 true
particle flash ^ ^1.5 ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
particle lava ^ ^1.5 ^0.5 0 0 0 0 2 force @a[scores={particle=0}]
particle explosion ^ ^1.5 ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
particle trial_spawner_detection ^ ^1.5 ^0.5 0 0 0 0 3 force @a[scores={particle=0}]
playsound entity.dolphin.death record @a ~ ~ ~ 2 1
summon marker ~ ~ ~ {Tags:["skill.creation.cradle.laser"]}
execute facing entity @a[tag=target] feet run tp @n[type=marker,tag=skill.creation.cradle.laser] ^ ^1.5 ^0.5 ~ ~
scoreboard players set loop zombie.creation.cradle 0
execute as @n[type=marker,tag=skill.creation.cradle.laser] at @s run function zombie:skill/creation/cradle/loop
kill @n[type=marker,tag=skill.creation.cradle.laser]
tag @a[tag=target] remove target
